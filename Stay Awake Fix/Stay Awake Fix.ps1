$pshost = Get-Host              # Get the PowerShell Host.
$pswindow = $pshost.UI.RawUI    # Get the PowerShell Host's UI.

$newsize = $pswindow.windowsize # Get the UI's current Window Size.
$newsize.height = 10		# Set the new buffer's height.
$newsize.width = 50            # Set the new Window Width to 150 columns.
$pswindow.windowsize = $newsize # Set the new Window Size as active.

" "
"	DO NOT CLOSE THIS!!!"
" This Powershell script inputs F15 + Shift every"
" hour to keep the screen from going to sleep."
" This is a workaround for the Probook 430 G4 bug"
" where the screen refuses to come back on without"
" completely restarting the device. Thank you!"
" "
"	~James Harrell"


$wsh = New-Object -ComObject WScript.Shell
while (1) {
  # Used to keep kiosk screen from going off
  # Send Shift+F15 - this is the least intrusive key combination I can think of and is also used as default by:
  $wsh.SendKeys('+{F15}')
  Start-Sleep -seconds 3600
}