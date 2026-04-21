@echo off
set GAME=CookieCraze
set PASSWORD=CrazeMastery

for /f "delims=" %%v in (..\docks\version.txt) do set VERSION=%%v

set TITLE=%GAME% V%VERSION%
set TAG=V%VERSION%0
set WIN_SOURCE=..\releases\windows\CookieCraze_windows_portable_password_is_CrazeMastery\cycrz
set ARCHIVE=..\releases\archives\%GAME%_windows_portable_password_is_%PASSWORD%.7z
set INSTALLER=..\releases\archives\%GAME%_windows_installer_password_is_%PASSWORD%.exe

set LOGFILE=%TEMP%\releaser_output.txt
del "%LOGFILE%" 2>nul

echo. >> "%LOGFILE%"
echo Building Windows portable 7z archive... >> "%LOGFILE%"
echo. >> "%LOGFILE%"
"C:\Program Files\7-Zip\7z.exe" a -t7z "%GAME%_windows_portable_password_is_%PASSWORD%.7z" "%WIN_SOURCE%" -mx=9 -m0=LZMA2 -md=64m -mfb=64 -ms=on -mmt=12 -p%PASSWORD% -mhe=on >> "%LOGFILE%" 2>&1

echo. >> "%LOGFILE%"
echo Moving archive to releases\archives... >> "%LOGFILE%"
if not exist "..\releases\archives" mkdir "..\releases\archives"
move "%GAME%_windows_portable_password_is_%PASSWORD%.7z" "..\releases\archives\%GAME%_windows_portable_password_is_%PASSWORD%.7z" >> "%LOGFILE%" 2>&1

echo. >> "%LOGFILE%"
echo Building Windows installer... >> "%LOGFILE%"
echo. >> "%LOGFILE%"
"C:\Program Files (x86)\Inno Setup 6\ISCC.exe" /Q "..\installer\cycrz.iss" >> "%LOGFILE%" 2>&1

echo. >> "%LOGFILE%"
echo All builds complete. >> "%LOGFILE%"

echo. >> "%LOGFILE%"
echo Tagging latest commit as %TAG%... >> "%LOGFILE%"
git tag -f "%TAG%" >> "%LOGFILE%" 2>&1
git push origin -f "%TAG%" >> "%LOGFILE%" 2>&1

echo. >> "%LOGFILE%"
echo Deleting existing release if it exists... >> "%LOGFILE%"
"C:\Program Files\GitHub CLI\gh.exe" release delete "%TAG%" --yes >> "%LOGFILE%" 2>&1

echo. >> "%LOGFILE%"
echo Creating GitHub release %TITLE% with tag %TAG%... >> "%LOGFILE%"
echo. >> "%LOGFILE%"

set ASSETS=
if exist "%ARCHIVE%" set ASSETS=%ASSETS% "%ARCHIVE%"
if exist "%INSTALLER%" set ASSETS=%ASSETS% "%INSTALLER%"

if "%ASSETS%"=="" (
    echo.
    echo WARNING: No release assets found. Create the release anyway with no assets? (Y/N)
    set /p CONFIRM=
    if /i not "%CONFIRM%"=="Y" (
        echo. >> "%LOGFILE%"
        echo Release cancelled. No assets found and user chose not to proceed. >> "%LOGFILE%"
        type "%LOGFILE%"
        type "%LOGFILE%" | clip
        echo.
        echo Output copied to clipboard.
        del "%LOGFILE%" 2>nul
        pause
        exit /b 1
    )
)

"C:\Program Files\GitHub CLI\gh.exe" release create "%TAG%" %ASSETS% --title "%TITLE%" --notes "" >> "%LOGFILE%" 2>&1

echo. >> "%LOGFILE%"
echo Release complete. >> "%LOGFILE%"

type "%LOGFILE%"
type "%LOGFILE%" | clip

echo.
echo Output copied to clipboard.
del "%LOGFILE%" 2>nul
pause
