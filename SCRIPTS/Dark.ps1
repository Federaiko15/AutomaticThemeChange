# Set the Dark Theme
$Path = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize'
Set-ItemProperty -Path $Path -Name SystemUsesLightTheme -Value 0 -Type Dword -Force
Set-ItemProperty -Path $Path -Name AppsUseLightTheme -Value 0 -Type Dword -Force
Stop-Process -ProcessName Explorer -Force # Restart Eplorer and apply immediatly the new theme