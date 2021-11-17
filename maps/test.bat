@echo off
for /f "tokens=*" %%f in ('dir /b %CD%\*.res') do echo. >>%%f
for /f "tokens=*" %%f in ('dir /b %CD%\*.res') do echo maps/hl_c19.bsp >>%%f
pause