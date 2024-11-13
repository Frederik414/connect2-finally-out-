@echo off
color 5
title Connect2

:: Get IP input from the user
set /p ip="Enter an IP: "
echo Connected to %ip% times=254.91ms protocol-TCP port-5163

:: Display "Connected to [IP]" 20 times
for /l %%i in (1,1,20) do (
    echo Connected to %ip% times=254.91ms protocol-TCP port-5163
    ping localhost -n 2 >nul
)

:: Now switch to "Connection timed out" loop
:loop1
color c
echo Connection timed out
ping localhost -n 2 >nul
goto loop1
