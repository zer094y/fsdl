@echo off
:: ///////////////////////////////////
:: Missing files checker by qbit'z
:: some times for some reason.. files are missing-  
:: and this script helps you to track the missing files.
:: ///////////////////////////////////
echo.
echo     ^_^_^_^_^_^_^_ ^_^_                        
echo    / ^_^_^_^_(^_) /^_^_  ^_^_^_^_^_               
echo   / /^_  / / / ^_ \/ ^_^_^_/               
echo  / ^_^_/ / / /  ^_^_(^_^_  )                
echo /^_/   /^_///\^_^_^_/^_^_^_^_/   ^_^_            
echo   ^_^_^_^_^_/ /^_  ^_^_^_  ^_^_^_^_^_/ /^_^_^_^_^_  ^_^_^_^_^_
echo  / ^_^_^_/ ^_^_ \/ ^_ \/ ^_^_^_/ //^_/ ^_ \/ ^_^_^_/
echo / /^_^_/ / / /  ^_^_/ /^_^_/ ,^< /  ^_^_/ /    
echo \^_^_^_/^_/ /^_/\^_^_^_/\^_^_^_/^_/^|^_^|\^_^_^_/^_/
echo.& echo Version: v 1& echo.

:: This is the maplist i use in my server, edit for your own needs.
(
	echo hl_c00
	echo hl_c01_a1
	echo hl_c01_a2
	echo hl_c02_a1
	echo hl_c02_a2
	echo hl_c03
	echo hl_c04
	echo hl_c05_a1
	echo hl_c05_a2
	echo hl_c05_a3
	echo hl_c06
	echo hl_c07_a1
	echo hl_c07_a2
	echo hl_c08_a1
	echo hl_c08_a2
	echo hl_c09
	echo hl_c10
	echo hl_c11_a1
	echo hl_c11_a2
	echo hl_c11_a3
	echo hl_c11_a4
	echo hl_c11_a5
	echo hl_c12
	echo hl_c13_a1
	echo hl_c13_a2
	echo hl_c13_a3
	echo hl_c13_a4
	echo hl_c14
	echo hl_c15
	echo hl_c16_a1
	echo hl_c16_a2
	echo hl_c16_a3
	echo hl_c16_a4
	echo hl_c17
	echo hl_c18
	echo hl_c19
	echo hl_t00
	echo ba_canal1
	echo ba_canal1b
	echo ba_canal2
	echo ba_canal3
	echo ba_elevator
	echo ba_maint
	echo ba_outro
	echo ba_power1
	echo ba_power2
	echo ba_security1
	echo ba_security2
	echo ba_teleport1
	echo ba_teleport2
	echo ba_tram1
	echo ba_tram2
	echo ba_tram3
	echo ba_xen1
	echo ba_xen2
	echo ba_xen3
	echo ba_xen4
	echo ba_xen5
	echo ba_xen6
	echo ba_yard1
	echo ba_yard2
	echo ba_yard3
	echo ba_yard3a
	echo ba_yard3b
	echo ba_yard4
	echo ba_yard4a
	echo ba_yard5
	echo ba_yard5a
	echo th_ep1_00
	echo th_ep1_01
	echo th_ep1_02
	echo th_ep1_03
	echo th_ep1_04
	echo th_ep1_05
	echo th_ep2_00
	echo th_ep2_01
	echo th_ep2_02
	echo th_ep2_03
	echo th_ep2_04
	echo th_ep3_00
	echo th_ep3_01
	echo th_ep3_02
	echo th_ep3_03
	echo th_ep3_04
	echo th_ep3_05
	echo th_ep3_06
	echo th_ep3_07
	echo th_escape
	echo uplink
	echo of0a0
	echo of1a1
	echo of1a2
	echo of1a3
	echo of1a4
	echo of1a4b
	echo of1a5
	echo of1a5b
	echo of1a6
	echo of2a1
	echo of2a1b
	echo of2a2
	echo of2a3
	echo of2a4
	echo of2a5
	echo of2a6
	echo of3a1
	echo of3a2
	echo of3a4
	echo of3a5
	echo of3a6
	echo of4a1
	echo of4a2
	echo of4a3
	echo of4a4
	echo of4a5
	echo of5a1
	echo of5a2
	echo of5a3
	echo of5a4
	echo of6a1
	echo of6a2
	echo of6a3
	echo of6a4
	echo of6a4b
	echo of6a5
	echo of7a0
)> "filestocheck.txt"
set "missing=0"
:: for loops to check if the .bsp / .res / .cfg exist or not, else printing it ot the terminal.
echo Files& echo ------------------------------------
for /F "tokens=*" %%A in (filestocheck.txt) do if not exist "%%A.bsp" echo map %%A.bsp is missing..
for /F "tokens=*" %%A in (filestocheck.txt) do if not exist "%%A.res" echo res %%A.res is missing..
for /F "tokens=*" %%A in (filestocheck.txt) do if not exist "%%A.cfg" echo cfg %%A.cfg is missing..
echo ------------------------------------
:: make a cleanup
if exist "filestocheck.txt" del "filestocheck.txt"
echo.& echo Done!
pause>nul
exit
