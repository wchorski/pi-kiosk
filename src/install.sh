#! /bin/bash
### read://https_pimylifeup.com/?url=https%3A%2F%2Fpimylifeup.com%2Fraspberry-pi-kiosk%2F#copy


### rm unneeded packages
sudo apt purge wolfram-engine scratch scratch2 nuscratch sonic-pi idle3 -y
sudo apt purge smartsim java-common minecraft-pi libreoffice* -y
sudo apt clean
sudo apt autoremove -y

sudo apt update && sudo apt upgrade -y

## needed tools
sudo apt install xdotool unclutter sed

### raspi-config settings
echo ">> 1 System Options > S5 Boot / auto login to desktop [sudo raspi-config]"
echo ">> 7 Advanced Options > A5 Resolution"
#sudo raspi-config

### create service
sudo cp ./kiosk.service /etc/systemd/system/
sudo cp ./start.sh /etc/kiosk-start.sh
sudo systemctl enable kiosk.service
sudo systemctl start kiosk.service
sudo systemctl status kiosk.service