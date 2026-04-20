@echo off
set GAME=CookieCraze
set PASSWORD=CrazeMastery

for /f "delims=" %%v in (..\docks\version.txt) do set VERSION=%%v

set TITLE=%GAME% V%VERSION%
set TAG=V%VERSION%0
set ARCHIVE=..\releases\archives\%GAME%_windows_portable_password_is_%PASSWORD%.7z
set INSTALLER=..\releases\archives\%GAME%_windows_installer_password_is_%PASSWORD%.exe

set LOGFILE=%TEMP%\releaser_output.txt
del "%LOGFILE%" 2>nul

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

"C:\Program Files\GitHub CLI\gh.exe" release create "%TAG%" %ASSETS% --title "%TITLE%" --notes "" >> "%LOGFILE%" 2>&1

echo. >> "%LOGFILE%"
echo Release complete. >> "%LOGFILE%"

type "%LOGFILE%"
type "%LOGFILE%" | clip

echo.
echo Output copied to clipboard.
del "%LOGFILE%" 2>nul
pause
