@echo off
cls
call bin\runlua.bat main.lua
pause & goto :eof

:: error ?
pushd %~dp0\bin
call runlua.bat %~dp0test2.lua
popd


pause
