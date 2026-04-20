@echo off
set GAME=CookieCraze
set PASSWORD=CrazeMastery

set WIN_SOURCE=..\releases\windows\CookieCraze_windows_portable_password_is_CrazeMastery\cycrz

set LOGFILE=%TEMP%\builder_output.txt
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

type "%LOGFILE%"
type "%LOGFILE%" | clip

echo.
echo Output copied to clipboard.
del "%LOGFILE%" 2>nul
pause
