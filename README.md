## Initial setup
Login as root
apt install sudo

Login as user
sudo -s
Type in password
exit
Login as root
vi /etc/sudoers
user	ALL=(ALL:ALL) ALL

# Installing NVIDIA drivers
Login as user
Install nvidia drivers
https://wiki.debian.org/NvidiaGraphicsDrivers
https://linuxconfig.org/how-to-install-nvidia-driver-on-debian-10-buster-linux 

sudo echo blacklist nouveau > /etc/modprobe.d/blacklist-nvidia-nouveau.conf
sudo echo blacklist nouveau > /etc/modprobe.d/blacklists-nvidia-nouveau.conf

# Installing chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y google-chrome-stable_current_amd64.deb

# Sound
https://www.alsa-project.org/wiki/Setting_the_default_device
cat /proc/asound/cards
sudo touch /etc/asound.conf
vim /etc/asound.conf
	defaults.pcm.card 1
	defaults.ctl.card 1

# Apps
sudo apt install numlockx
sudo apt install snapd

Download vscode
sudo apt install ./vscode

Docker
https://docs.docker.com/engine/install/debian/
Docker-compose
https://docs.docker.com/compose/install/

Node
https://github.com/nodesource/distributions#debinstall
sudo curl -fsSL https://deb.nodesource.com/setup_15.x | sudo bash -
sudo apt install nodejs

Discord
wget dl.discordapp.net/apps/linux/0.0.13.deb
sudo apt install ./discord-0.0.13.deb

