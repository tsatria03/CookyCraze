@echo off
set GAME=CookyCraze
set PASSWORD=CrazeMastery

for /f "delims=" %%v in (..\docks\version.txt) do set VERSION=%%v

set TITLE=%GAME% V%VERSION%
set TAG=V%VERSION%0
set ARCHIVE=..\releases\archives\%GAME%_windows_portable_password_is_%PASSWORD%.7z
set INSTALLER=..\releases\archives\%GAME%_windows_installer_password_is_%PASSWORD%.exe

echo.
echo Creating GitHub release %TITLE% with tag %TAG%...
echo.

"C:\Program Files\GitHub CLI\gh.exe" release create "%TAG%" "%ARCHIVE%" "%INSTALLER%" --title "%TITLE%" --notes ""

echo.
echo Release complete.
pause
