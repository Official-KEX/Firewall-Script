@setlocal enableextensions
@cd /d "%~dp0"
@echo off
:prompt
cls
title Firewall Script by KEX
echo.
echo --------------------------------------------------------------
echo This script allows you to easily create new firewall rules
echo for all .exe files in this folder and its subfolders.
echo --------------------------------------------------------------
echo Note:
echo This script can not overwrite existing firewall rules!
echo If you need to revert/make changes, to existing rules
echo please use the Windows Firewall!
echo.
echo All entries created by this script are named like this:
echo "Blocked/Allowed by EFS:" followed by its filepath 
echo --------------------------------------------------------------
echo.
echo What do you want to do?
echo.
echo 1. Block Incoming/Outgoing Connections For All .exe's
echo 2. Allow Incoming/Outgoing Connections For All .exe's 
echo 3. Block Only Incoming Connections For All .exe's
echo 4. Block Only Outgoing Connections For All .exe's 
echo 5. Allow Only Incoming Connections For All .exe's
echo 6. Allow Only Outgoing Connections For All .exe's 
echo 7. Exit
echo.
set /p choice=Please Enter a number:
if /I "%choice%" equ "1" (
  echo Adding entries for all .exe files to the firewall...
  for /R %%f in (*.exe) do (
  netsh advfirewall firewall add rule name="Blocked by EFS: %%f" dir=in program="%%f" action=block
  netsh advfirewall firewall add rule name="Blocked by EFS: %%f" dir=out program="%%f" action=block
  cls
)
) else if /I "%choice%" equ "2" (
for /R %%f in (*.exe) do (
  netsh advfirewall firewall add rule name="Allowed by EFS: %%f" dir=in program="%%f" action=allow
  netsh advfirewall firewall add rule name="Allowed by EFS: %%f" dir=out program="%%f" action=allow
  cls
)
) else if /I "%choice%" equ "3" (
for /R %%f in (*.exe) do (
  netsh advfirewall firewall add rule name="Blocked by EFS: %%f" dir=in program="%%f" action=block
  cls
)
) else if /I "%choice%" equ "4" (
for /R %%f in (*.exe) do (
  netsh advfirewall firewall add rule name="Blocked by EFS: %%f" dir=out program="%%f" action=block
  cls
)
) else if /I "%choice%" equ "5" (
for /R %%f in (*.exe) do (
  netsh advfirewall firewall add rule name="Allowed by EFS: %%f" dir=in program="%%f" action=allow
  cls
)
) else if /I "%choice%" equ "6" (
for /R %%f in (*.exe) do (
  netsh advfirewall firewall add rule name="Allowed by EFS: %%f" dir=out program="%%f" action=allow
  cls
)
) else if /I "%choice%" equ "7" (
  cls
  color 02
  echo Why did u even start it then? Anyway, have a nice day :D
  pause >nul
  exit
)
cls
color 02
echo Done! You can check the entries in your Windows Firewall!
echo.
echo Press Enter to exit...
pause >nul