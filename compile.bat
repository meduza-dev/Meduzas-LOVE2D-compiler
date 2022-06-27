@echo off
title MeduZa's LOVE2D Compiler.
echo.
echo If you will press Enter, compiled game will appear in "final" folder.
echo (All files existing in "final" folder will be deleted before compile.)
echo Make sure your folder structure is correct, and you have game.zip file.
echo.
pause
cls
cd final
echo.
echo Cleaning "final" folder...
echo.
del *.* /s /q
cls
cd..
echo.
echo Compiling game...
echo.
copy engine\*.dll final\*.dll
copy engine\love.exe final\l.exe
copy game.zip final\g.love
cd final
copy /b l.exe+g.love game.exe
del l.exe
del g.love
echo.
echo Compile finished, look for errors before this message.
echo.
pause