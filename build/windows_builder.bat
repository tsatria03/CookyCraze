@echo off
set GAME=CookyCraze
set PASSWORD=CrazeMastery

set WIN_SOURCE=..\releases\windows\CookyCraze_windows_portable_password_is_CrazeMastery\cycrz

echo.
echo Building Windows portable 7z archive...
echo.

"C:\Program Files\7-Zip\7z.exe" a -t7z "%GAME%_windows_portable_password_is_%PASSWORD%.7z" "%WIN_SOURCE%" -mx=9 -m0=LZMA2 -md=64m -mfb=64 -ms=on -mmt=12 -p%PASSWORD% -mhe=on

echo.
echo Moving archive to releases\archives...
if not exist "..\releases\archives" mkdir "..\releases\archives"
move "%GAME%_windows_portable_password_is_%PASSWORD%.7z" "..\releases\archives\%GAME%_windows_portable_password_is_%PASSWORD%.7z"

echo.
echo Building Windows installer...
echo.
"C:\Program Files (x86)\Inno Setup 6\ISCC.exe" /Q "..\installer\cycrz.iss"

echo.
echo All builds complete.
pause
