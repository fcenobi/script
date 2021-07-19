#!/bin/bash

mkdir ~/getmacapps_temp
cd ~/getmacapps_temp

# Installing Chrome
curl -L -O "https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg"
hdiutil mount -nobrowse googlechrome.dmg
cp -R "/Volumes/Google Chrome/Google Chrome.app" /Applications
hdiutil unmount "/Volumes/Google Chrome"
rm googlechrome.dmg

# Installing Firefox
curl -L -o Firefox.dmg "http://download.mozilla.org/?product=firefox-latest&os=osx&lang=en-US"
hdiutil mount -nobrowse Firefox.dmg
cp -R "/Volumes/Firefox/Firefox.app" /Applications
hdiutil unmount "/Volumes/Firefox"
rm Firefox.dmg

# Installing Spotify
curl -L -O "http://download.spotify.com/Spotify.dmg"
hdiutil mount -nobrowse Spotify.dmg
cp -R "/Volumes/Spotify/Spotify.app" /Applications
hdiutil unmount "/Volumes/Spotify"
rm Spotify.dmg

# Installing VLC Player
curl -L -o vlc.dmg "http://get.videolan.org/vlc/2.2.4/macosx/vlc-2.2.4.dmg"
hdiutil mount -nobrowse vlc.dmg -mountpoint /Volumes/vlc
cp -R "/Volumes/vlc/VLC.app" /Applications
hdiutil unmount "/Volumes/vlc"
rm vlc.dmg

# Installing Skype
curl -L -O "http://www.skype.com/go/getskype-macosx.dmg"
hdiutil mount -nobrowse getskype-macosx.dmg
cp -R "/Volumes/Skype/Skype.app" /Applications
hdiutil unmount "/Volumes/Skype"
rm getskype-macosx.dmg

# Installing Dropbox
curl -L -o Dropbox.dmg "https://www.dropbox.com/download?plat=mac&type=full"
hdiutil mount -nobrowse Dropbox.dmg
cp -R "/Volumes/Dropbox Installer/Dropbox.app" /Applications
hdiutil unmount "/Volumes/Dropbox Installer"
rm Dropbox.dmg

# Installing Google Drive
curl -L -O "https://dl-ssl.google.com/drive/installgoogledrive.dmg"
hdiutil mount -nobrowse installgoogledrive.dmg
cp -R "/Volumes/Install Google Drive/Google Drive.app" /Applications
hdiutil unmount "/Volumes/Install Google Drive"
rm installgoogledrive.dmg

# Installing caffeine
curl -L -o Caffeine.zip "http://download.lightheadsw.com/download.php?software=caffeine"
unzip Caffeine.zip
mv Caffeine.app /Applications
rm Caffeine.zip

# Installing Sublime Text 2
echo "Installing Sublime Text 2"
curl -L -o "Sublime Text 2.0.2.dmg" "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2.dmg"
hdiutil mount -nobrowse "Sublime Text 2.0.2.dmg"
cp -R "/Volumes/Sublime Text 2/Sublime Text 2.app" /Applications
hdiutil unmount "/Volumes/Sublime Text 2/Sublime Text 2.app"
rm "Sublime Text 2.0.2.dmg"

# Installing iterm2
curl -L -o iTerm2.zip "https://iterm2.com/downloads/stable/latest"
unzip iTerm2.zip
mv iTerm.app /Applications
rm iTerm2.zip

# Installing Sequel Pro
curl -L -o sequel-pro.dmg "https://github.com/sequelpro/sequelpro/releases/download/release-1.1.2/sequel-pro-1.1.2.dmg"
hdiutil mount -nobrowse sequel-pro.dmg
cp -R "/Volumes/Sequel Pro 1.1.2/Sequel Pro.app" /Applications
hdiutil unmount "/Volumes/Sequel Pro 1.1.2"
rm sequel-pro.dmg

# Installing GitHub
curl -L -o mac_GitHub.zip "https://central.github.com/mac/latest"
unzip mac_GitHub.zip
mv GitHub.app /Applications
rm mac_GitHub.zip

# Installing flux
curl -L -O "https://justgetflux.com/mac/Flux.zip"
unzip Flux.zip
mv Flux.app /Applications
rm Flux.zip

# Installing Grand Persepective
curl -L -o GrandPerspective.dmg "https://downloads.sourceforge.net/project/grandperspectiv/grandperspective/1.9.1/GrandPerspective-1_9_1.dmg"
hdiutil mount -nobrowse GrandPerspective.dmg
cp -R "/Volumes/GrandPerspective 1.9.1/GrandPerspective.app" /Applications
hdiutil unmount "/Volumes/GrandPerspective 1.9.1"
rm GrandPerspective.dmg

# Installing Coconut Battery
curl -L -o coconutBattery.zip "http://coconut-flavour.com/downloads/coconutBattery_3.6.zip"
unzip coconutBattery.zip
mv "coconutBattery.app" /Applications
rm coconutBattery.zip

# Installing 1Password
curl -L -o 1Password.zip "https://d13itkw33a7sus.cloudfront.net/dist/1P/mac4/1Password-6.0.2.zip"
unzip 1Password.zip
mv "1Password 6.app" /Applications
rm 1Password.zip

# Installing Transmit
curl -L -o Transmit.zip "http://download.panic.com/transmit/Transmit%204.4.12.zip"
unzip Transmit.zip
mv "Transmit.app" /Applications
rm Transmit.zip

# Installing Alfred
curl -L -o alfred.dmg "https://cachefly.alfredapp.com/Alfred_3.3.2_818.dmg"
hdiutil mount -nobrowse alfred.dmg
cp -R "/Volumes/Alfred/Alfred 3.app" /Applications
rm alfred.dmg

# Installing Skitch
curl -L -o Skitch.zip "http://evernote.com/download/get.php?file=SkitchMac"
unzip Skitch.zip
mv "Skitch.app" /Applications
rm Skitch.zip

# Installing Evernote
curl -L -o Evernote.dmg "http://evernote.com/download/get.php?file=EvernoteMac"
yes | hdiutil mount -nobrowse Evernote.dmg -nobrowse > /dev/null
cp -R "/Volumes/Evernote/Evernote.app" /Applications
hdiutil unmount "/Volumes/Evernote"
rm Evernote.dmg

# Installing The Unarchiver
curl -L -o TheUnarchiver.zip "http://unarchiver.c3.cx/downloads/TheUnarchiver3.11.1.zip"
unzip TheUnarchiver.zip
mv "The Unarchiver.app" /Applications
rm TheUnarchiver.zip

# Installing unison 2
curl -L -o Unison.zip "http://download.panic.com/unison/Unison%202.2.zip"
unzip Unison.zip
mv "Unison.app" /Applications
rm Unison.zip

# Installing BBEdit
curl -L -o BBEdit.dmg "https://s3.amazonaws.com/BBSW-download/BBEdit_11.6.5.dmg"
hdiutil mount -nobrowse BBEdit.dmg
cp -R "/Volumes/BBEdit 11.6.5/BBEdit.app" /Applications
hdiutil unmount "/Volumes/BBEdit 11.6.5"
rm BBEdit.dmg

