echo "********* Remove Zoom for Mac 8.0.2 *********"

echo "dis ZoomOpener"
pkill "ZoomOpener"; rm -rf ~/.zoomus; touch ~/.zoomus && chmod 000 ~/.zoomus;
echo "dis RingCentralOpener"
pkill "RingCentralOpener"; rm -rf ~/.ringcentralopener; touch ~/.ringcentralopener && chmod 000 ~/.ringcentralopener;
echo "Zoom download files Checking..."
cd ../Downloads/
rm -r Zoom.pkg

echo "Zoom task killing..."

sudo osascript -e 'quit app "zoom.us.app"'
sudoosascript -e 'quit app "zoom.us"'

echo "Zoom uninstalling..."

rm -r /Applications/zoom.us.app
rm -r ~/Library/Internet\ Plug-Ins/ZoomUsPlugIn.plugin
rm -r ~/Library/Application\ Support/zoom.us/
rm -r ~/Library/Preferences/us.zoom.xos.plist
rm -r ~/Library/Preferences/ZoomChat.plist

echo "mac OS System Preferences Checking..."
sudo update_dyld_shared_cache -force
sudo kextcache -system-caches
sudo kextcache -system-prelinked-kernel
sudo kextcache -system-prelinked-kernel
sudo defaults write /Library/Preferences/com.apple.alf globalstate -int 1
sudo softwareupdate --install --all
sudo softwareupdate -l --include-config-data


echo "Complete: Zoom uninstalled"
