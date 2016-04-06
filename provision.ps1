# Enable Auto-Login
$RegKey ="HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Winlogon"
Set-ItemProperty -Path $RegKey -Name AutoAdminLogon -Value 1
Set-ItemProperty -Path $RegKey -Name DefaultUsername -Value vagrant
Set-ItemProperty -Path $RegKey -Name DefaultPassword -Value vagrant
# Install 1Password
choco install --force -y 1password
# Start 1password on startup - Thanks StackOverflow (https://stackoverflow.com/questions/9701840/how-to-create-a-shortcut-using-powershell)
$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\1Password 4.lnk")
$Shortcut.TargetPath = "$env:PROGRAMDATA\Microsoft\Windows\Start Menu\Programs\1Password\1Password 4.lnk"
$Shortcut.Save()
# Reboot
shutdown /r /t 0