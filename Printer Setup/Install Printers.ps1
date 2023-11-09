Get-Printer -ComputerName \\ELH1;

"Select a Printer to Install or Type '0' to exit";

$PRINTER = $null;

while ($PRINTER -ne 0)
{
	$PRINTER = Read-Host "Input Printer Name: ";

	if ($PRINTER -ne 0) 
	{
		Add-Printer -ConnectionName "\\ELH1\$Printer";
	}
}

"Process Complete. Don't forget to manually set up the Printing Preferences, unpin Mail and Microsoft Store, and sign into Chrome/Onedrive/Outlook.";

Write-Host -NoNewLine 'Press any key to continue...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
	
Show-ControlPanelItem -Name "Devices and Printers";

exit;