@echo off
call bin\runlua.bat main.lua
pause & exit

:: error ?
pushd %~dp0\bin
call runlua.bat %~dp0test2.lua
popd


pause
