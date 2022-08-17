# pi-kiosk
make a raspberry pi auto full screen to a webpage 
<br>

### ⚙ Settings
0. create a user `sign`
0. disable screen blanking / display sleep
  + `sudo raspi-config`
  + `2 Display Options`
  + `D4 Screen Blanking` say No
<br>

### 🏭 Production
0. `nano ./src/start.sh` -> `URL_FULLSCREEN` variable to your desired destination
0. `nano ./src/kiosk.service` -> change `sign` to whatever user you've set up
0. `sh ./src/install.sh`
0. when in doubt, `sudo reboot`
<br>

### 🚼 Changes
if you change the url path you'll need to restart the service
0. `nano /etc/kiosk-start.sh` 
0. `sudo systemctl restart kiosk.service`
<br>