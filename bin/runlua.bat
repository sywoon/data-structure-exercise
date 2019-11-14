@echo off

echo %*
echo %~dpnx0 
echo %~dpnx1 %~nx1

::setlocal enabledelayedexpansion 
if "%~dp0"=="%~dp1" (
    set "luastring=require('__init'); g_initSllib({[[%~dp0]]})"
) else (
    set "luastring=require('__init'); g_initSllib({[[%~dp0]], [[%~dp1]]})"
)

echo %~dp0\lua -e "%luastring%" %~nx1
call %~dp0\lua -e "%luastring%" %~nx1

