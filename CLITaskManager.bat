@echo off
setlocal enabledelayedexpansion

:menu
cls
echo ===============================
echo      Simple Task Manager
echo ===============================
echo 1. View running processes
echo 2. Kill a process by PID
echo 3. Exit
echo ===============================
set /p choice=Select an option (1-3): 

if "!choice!"=="1" goto view_processes
if "!choice!"=="2" goto kill_process
if "!choice!"=="3" goto exit

goto menu

:view_processes
cls
echo Running processes:
echo ===============================
tasklist
echo ===============================
pause
goto menu

:kill_process
set /p pid=Enter the PID of the process to kill: 
taskkill /F /PID !pid!
echo Process !pid! has been terminated.
pause
goto menu

:exit
endlocal
exit
