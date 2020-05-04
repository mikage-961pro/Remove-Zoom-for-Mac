echo "********* Remove Zoom for Mac 8.0.2 *********"

echo "dis ZoomOpener"
pkill "ZoomOpener"; rm -rf ~/.zoomus; touch ~/.zoomus && chmod 000 ~/.zoomus;
echo "dis RingCentralOpener"
pkill "RingCentralOpener"; rm -rf ~/.ringcentralopener; touch ~/.ringcentralopener && chmod 000 ~/.ringcentralopener;
echo "Zoom download files Checking..."
cd ../Downloads/
rm -r Zoom.pkg

echo "Zoom uninstalling..."
rm -r /Applications/zoom.us.app
rm -r ~/Library/Internet\ Plug-Ins/ZoomUsPlugIn.plugin
rm -r ~/Library/Application\ Support/zoom.us/
rm -r ~/Library/Preferences/us.zoom.xos.plist
rm -r ~/Library/Preferences/ZoomChat.plist



echo "Complete: Zoom uninstalled"
