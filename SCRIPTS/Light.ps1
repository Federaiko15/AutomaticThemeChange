# Set the Light theme
$Path = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize'
Set-ItemProperty -Path $Path -Name SystemUsesLightTheme -Value 1 -Type Dword -Force
Set-ItemProperty -Path $Path -Name AppsUseLightTheme -Value 1 -Type Dword -Force
Stop-Process -ProcessName Explorer -Force #  Restart Eplorer and apply immediatly the new theme