@echo off
cd /d "%~dp0"

set GAME=CookieCraze
set PASSWORD=CrazeMastery
set WIN_SOURCE=..\releases\windows\CookieCraze_windows_portable_password_is_CrazeMastery\cycrz
set ARCHIVE_DIR=..\releases\archives
set ARCHIVE_NAME=%GAME%_windows_portable_password_is_%PASSWORD%.7z
set ARCHIVE=%ARCHIVE_DIR%\%ARCHIVE_NAME%
set INSTALLER=%ARCHIVE_DIR%\%GAME%_windows_installer_password_is_%PASSWORD%.exe

for /f "usebackq delims=" %%v in ("..\docks\version.txt") do set VERSION=%%v

set TITLE=%GAME% V%VERSION%
set TAG=V%VERSION%0

echo.
echo Version: %VERSION%
echo Tag:     %TAG%
echo Title:   %TITLE%
echo.

echo Building Windows portable 7z archive...
echo.

if exist "%ARCHIVE%" (
    echo Removing existing archive...
    del "%ARCHIVE%"
)

if not exist "%ARCHIVE_DIR%" mkdir "%ARCHIVE_DIR%"

"C:\Program Files\7-Zip\7z.exe" a -t7z "%ARCHIVE_NAME%" "%WIN_SOURCE%" -mx=9 -m0=LZMA2 -md=64m -mfb=64 -ms=on -mmt=12 -p%PASSWORD% -mhe=on
if errorlevel 1 (
    echo ERROR: 7z archive build failed.
    pause
    exit /b 1
)

move "%ARCHIVE_NAME%" "%ARCHIVE%"
if errorlevel 1 (
    echo ERROR: Failed to move archive to %ARCHIVE_DIR%.
    pause
    exit /b 1
)

echo.
echo Building Windows installer...
echo.

"C:\Program Files (x86)\Inno Setup 6\ISCC.exe" /Q "..\installer\cycrz.iss"
if errorlevel 1 (
    echo ERROR: Installer build failed.
    pause
    exit /b 1
)

echo.
echo All builds complete.
echo.
echo Tagging latest commit as %TAG%...
git tag -f "%TAG%"
git push origin -f "%TAG%"

echo.
echo Deleting existing release if it exists...
"C:\Program Files\GitHub CLI\gh.exe" release delete "%TAG%" --yes 2>nul

echo.
echo Creating GitHub release %TITLE% with tag %TAG%...
echo.

set ASSETS=
if exist "%ARCHIVE%" set ASSETS=%ASSETS% "%ARCHIVE%"
if exist "%INSTALLER%" set ASSETS=%ASSETS% "%INSTALLER%"

"C:\Program Files\GitHub CLI\gh.exe" release create "%TAG%" %ASSETS% --title "%TITLE%" --notes ""

echo.
echo Release complete.
echo.
pause
