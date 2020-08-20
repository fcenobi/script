dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
Invoke-WebRequest -Uri https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi -OutFile WSLUpdate.msi -UseBasicParsing
msiexec.exe /package WSLUpdate.msi /quiet
wsl --set-default-version 2

mkdir -p $env:userprofile/Ubuntu/Focal/Ubuntu-20.04
Invoke-WebRequest -Uri https://cloud-images.ubuntu.com/focal/current/focal-server-cloudimg-amd64-wsl.rootfs.tar.gz -OutFile $env:userprofile/Ubuntu/Focal/Ubuntu-20.04.tar.gz -UseBasicParsing
wsl --import Ubuntu-20.04 $env:userprofile/Ubuntu/Focal/Ubuntu-20.04 $env:userprofile/Ubuntu/Focal/Ubuntu-20.04.tar.gz
List Distributions
wsl --list --all
wsl --setdefault Ubuntu-20.04
wsl --list --all
wsl --distribution Ubuntu-20.04
wsl

#disable beep
echo 'set bell-style none' >> ~/.inputrc
