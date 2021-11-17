@echo off
for /f "tokens=*" %%f in ('dir /b %CD%\*.cfg') do echo. >>%%f
for /f "tokens=*" %%f in ('dir /b %CD%\*.cfg') do echo exec custom_maps_cfg.cfg >>%%f
pause