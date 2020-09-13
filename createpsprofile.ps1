Set-ExecutionPolicy RemoteSigned -Scope LocalMachine -Force
if(!(Test-Path -Path $profile  )){New-Item -path $profile -type file -force}
if(!(Test-Path -Path $profile.AllUsersAllHosts  )){New-Item -path $profile.AllUsersAllHosts -type file -force}
if(!(Test-Path -Path $profile.AllUsersCurrentHost  )){New-Item -path $profile.AllUsersCurrentHost -type file -force}
if(!(Test-Path -Path $profile.CurrentUserAllHosts  )){New-Item -path $profile.CurrentUserAllHosts -type file -force}
if(!(Test-Path -Path $profile.CurrentUserCurrentHost )){New-Item -path $profile.CurrentUserCurrentHost -type file -force}
Test-Path -Path $profile
Test-Path -Path $profile.AllUsersAllHosts 
Test-Path -Path $profile.AllUsersCurrentHost 
Test-Path -Path $profile.CurrentUserAllHosts 
Test-Path -Path $profile.CurrentUserCurrentHost 
echo $profile
get-content $profile
echo $profile.AllUsersAllHosts 
get-content $profile.AllUsersAllHosts 
echo $profile.AllUsersCurrentHost 
get-content $profile.AllUsersCurrentHost  
echo $profile.CurrentUserAllHosts 
get-content  $profile.CurrentUserAllHosts 
echo $profile.CurrentUserCurrentHost 
get-content $profile.CurrentUserCurrentHost 

