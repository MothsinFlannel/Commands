@echo off

set /p Device="Input Device: "
qwinsta /server:%Device%

set /p SID="Input Session ID: "
echo You input %SID%

set /p Control="Control (y/n)? "
if %Control%==y goto Yes
if %Control%==n goto No

:Yes
Mstsc.exe /shadow:%SID% /v:%Device% /noConsentPrompt /control
goto End

:No
Mstsc.exe /shadow:%SID% /v:%Device% /noConsentPrompt

:End

