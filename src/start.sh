#! /bin/bash
# install for linux
xset s noblank
xset s off
xset -dpms

unclutter -idle 0.5 -root &

sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' /home/sign/.config/chromium/Default/Preferences
sed -i 's/"exit_type":"Crashed"/"exit_type":"Normal"/' /home/sign/.config/chromium/Default/Preferences

/usr/bin/chromium-browser --noerrdialogs --disable-infobars --kiosk https://nodesignage.williamusic.com/player

### simulate keypress (ctrl+R to refresh browser)
while true; do
   xdotool keydown ctrl+R; xdotool keyup ctrl+R;
   sleep 69
done
