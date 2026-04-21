@echo off
setlocal enabledelayedexpansion
cd /d "%~dp0"

set GAME=CookieCraze
set SITE_HTML=C:\Users\tonys\OneDrive\Documents\github\tsatria03.github.io\projects\games\CookieCraze\index.html
set SITE_REPO=C:\Users\tonys\OneDrive\Documents\github\tsatria03.github.io
set PASSWORD=CrazeMastery
set WIN_SOURCE=..\releases\windows\CookieCraze_windows_portable_password_is_CrazeMastery\cycrz
set ARCHIVE_DIR=..\releases\archives
set ARCHIVE_NAME=%GAME%_windows_portable_password_is_%PASSWORD%.7z
set ARCHIVE=%ARCHIVE_DIR%\%ARCHIVE_NAME%
set INSTALLER=%ARCHIVE_DIR%\%GAME%_windows_installer_password_is_%PASSWORD%.exe
set RELEASE_DIR=..\releases\windows\CookieCraze_windows_portable_password_is_%PASSWORD%

for /f "usebackq delims=" %%v in ("..\docks\version.txt") do set VERSION=%%v

set TITLE=%GAME% V%VERSION%
set TAG=V%VERSION%0

echo.
echo Version: %VERSION%
echo Tag:     %TAG%
echo Title:   %TITLE%
echo.

set /p COMPILE=Do you want to compile this project? (Y/N):
if /i "%COMPILE%"=="Y" (
    echo.
    echo Compiling NVGT source...
    "C:\nvgt\nvgt.exe" -c -Q "..\cycrz.nvgt"
    if errorlevel 1 (
        echo ERROR: NVGT compilation failed.
        pause
        exit /b 1
    )
    echo Compilation successful.
    echo.

    echo Replacing compiled output in release folder...
    if exist "%RELEASE_DIR%\cycrz" (
        rmdir /s /q "%RELEASE_DIR%\cycrz"
        if errorlevel 1 (
            echo ERROR: Failed to remove old cycrz folder.
            pause
            exit /b 1
        )
    )

    move "..\cycrz" "%RELEASE_DIR%\cycrz"
    if errorlevel 1 (
        echo ERROR: Failed to move compiled cycrz folder to release directory.
        pause
        exit /b 1
    )
    echo Release folder updated.
    echo.
) else (
    echo Skipping compilation.
    echo.
)

set /p PACKAGE=Do you want to package this project? (Y/N):
if /i "%PACKAGE%"=="Y" (
    echo.
    if not exist "%WIN_SOURCE%" (
        echo ERROR: cycrz folder not found in release directory. Please compile the full project first.
        pause
        exit /b 1
    )
    echo Building Windows portable 7z archive...
    if exist "%ARCHIVE%" del "%ARCHIVE%"
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
    echo Archive built successfully.
    echo.

    echo Building Windows installer...
    "C:\Program Files (x86)\Inno Setup 6\ISCC.exe" /Q "..\installer\cycrz.iss"
    if errorlevel 1 (
        echo ERROR: Installer build failed.
        pause
        exit /b 1
    )
    echo Installer built successfully.
    echo.
) else (
    echo Skipping packaging.
    echo.
)

set /p RELEASE=Do you want to release this project? (Y/N):
if /i "%RELEASE%" neq "Y" (
    echo Skipping release.
    echo.
    pause
    exit /b 0
)
echo.

set ASSETS=
if exist "%ARCHIVE%" set ASSETS=%ASSETS% "%ARCHIVE%"
if exist "%INSTALLER%" set ASSETS=%ASSETS% "%INSTALLER%"

if not "%ASSETS%"=="" goto :do_release

echo WARNING: No assets found.
echo.
set /p EMPTY_RELEASE=Do you still want to create an empty release? (Y/N):
if /i "%EMPTY_RELEASE%" neq "Y" (
    echo Release cancelled.
    echo.
    pause
    exit /b 0
)
echo.

:do_release

echo Tagging latest commit as %TAG%...
git tag -f "%TAG%"
git push origin -f "%TAG%"

echo.
echo Deleting existing release if it exists...
"C:\Program Files\GitHub CLI\gh.exe" release delete "%TAG%" --yes 2>nul

echo.
echo Creating GitHub release %TITLE% with tag %TAG%...
echo.

"C:\Program Files\GitHub CLI\gh.exe" release create "%TAG%" %ASSETS% --title "%TITLE%" --notes ""

echo.
echo Release complete.
echo.

if "%ASSETS%"=="" (
    echo WARNING: No assets were released. Skipping website update.
    echo.
    pause
    exit /b 0
)

set /p WEBSITE=Do you want to update the game's website? (Y/N):
if /i "%WEBSITE%" neq "Y" (
    echo Skipping website update.
    echo.
    pause
    exit /b 0
)
echo.

echo Updating website...
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0windows_site_releaser.ps1" -HtmlFile "%SITE_HTML%" -Version "%VERSION%" -Tag "%TAG%"
if errorlevel 1 (
    echo ERROR: Failed to update website HTML.
    pause
    exit /b 1
)
echo Website updated.
echo.

echo Committing website changes...
cd /d "%SITE_REPO%"
git log --oneline | findstr /c:"Updated CookieCraze to version %VERSION%." >nul
if not errorlevel 1 (
    echo WARNING: Commit "Updated CookieCraze to version %VERSION%." already exists. Skipping commit.
    echo.
    pause
    exit /b 0
)
git add "projects/games/CookieCraze/index.html"
git commit -m "Updated CookieCraze to version %VERSION%."
if errorlevel 1 (
    echo ERROR: Failed to commit website changes.
    pause
    exit /b 1
)
git push
if errorlevel 1 (
    echo ERROR: Failed to push website changes.
    pause
    exit /b 1
)
echo Website committed and pushed.
echo.
pause
