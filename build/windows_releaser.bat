@echo off
set GAME=CookyCraze
set PASSWORD=CrazeMastery

for /f "delims=" %%v in (..\docks\version.txt) do set VERSION=%%v

set TITLE=%GAME% V%VERSION%
set TAG=V%VERSION%0
set ARCHIVE=..\releases\archives\%GAME%_windows_portable_password_is_%PASSWORD%.7z
set INSTALLER=..\releases\archives\%GAME%_windows_installer_password_is_%PASSWORD%.exe

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

"C:\Program Files\GitHub CLI\gh.exe" release create "%TAG%"%ASSETS% --title "%TITLE%" --notes ""

echo.
echo Release complete.
pause
