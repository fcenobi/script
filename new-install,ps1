Set-ExecutionPolicy RemoteSigned -Scope LocalMachine -Force
if(!(Test-Path -Path $profile  )){New-Item -path $profile -type file -force}
if(!(Test-Path -Path $profile.AllUsersAllHosts  )){New-Item -path $profile.AllUsersAllHosts -type file -force}
if(!(Test-Path -Path $profile.AllUsersCurrentHost  )){New-Item -path $profile.AllUsersCurrentHost -type file -force}
if(!(Test-Path -Path $profile.CurrentUserAllHosts  )){New-Item -path $profile.CurrentUserAllHosts -type file -force}
if(!(Test-Path -Path $profile.CurrentUserCurrentHost )){New-Item -path $profile.CurrentUserCurrentHost -type file -force}
dism.exe /online /enable-feature /featurename:NetFX3 /all
$Path = $env:TEMP; $Installer = "chrome_installer.exe"; Invoke-WebRequest "http://dl.google.com/chrome/install/375.126/crome_installer.exe" -OutFile $Path\$Installer; Start-Process -FilePath $Path\$Installer -Args "/silent /install" -Verb RunAs -Wait; Remove-Item $Path\$Installer
