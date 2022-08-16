#! /bin/bash
# install for linux
xset s noblank
xset s off
xset -dpms

unclutter -idle 0.5 -root &

sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' /home/sign-admin/.config/chromium/Default/Preferences
sed -i 's/"exit_type":"Crashed"/"exit_type":"Normal"/' /home/sign-admin/.config/chromium/Default/Preferences

/usr/bin/chromium --noerrdialogs --disable-infobars --kiosk http://localhost:3000

### simulate keypress (ctrl+R to refresh browser)
# while true; do
#    xdotool keydown ctrl+R; xdotool keyup ctrl+R;
#    sleep 30
# done