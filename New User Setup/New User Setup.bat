@echo off
:: SET TASK BAR

del /f /q "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\*.*"
start "" "%~dp0\Resources\TaskBar"
echo Pin The Four Shortcuts Shown
pause
echo Wait a couple minutes to ensure Onedrive is installed, then continue.
pause

:: OPEN APPS TO SET UP

start "" "%~dp0\Resources\TaskBar\Google Chrome.lnk"
start "" "%~dp0\Resources\TaskBar\Outlook.lnk"
start "" "C:\Program Files\Microsoft OneDrive\OneDrive.exe"

echo Sign into Chrome, Outlook, and Onedrive then continue.
pause

::PRINTER SETUP

:PrintStart
echo 0	- Exit
echo 03	- ELH_RICOH_03
echo 04	- ELH_RICOH_04
echo 05	- ELH_RICOH_05
echo 06	- ELH_RICOH_06
echo 07	- ELH_RICOH_07
echo 09	- ELH_RICOH_09
echo 40	- ELH_RICOH_40

echo Select a Printer to Install or Type '0' to exit
set /p PRINTER="Input Printer: "

if %PRINTER%==0 goto PrintExit

rundll32 printui.dll PrintUIEntry /in /n \\ELH1\ELH_RICOH_%PRINTER%
goto PrintStart

:PrintExit
control printers

echo Process Complete. Don't forget to manually set up the Printing Preferences, unpin Mail and Microsoft Store, and sign into Chrome/Onedrive/Outlook.
pause