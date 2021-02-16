## Initial setup

Login as root

```sh
apt install sudo
```

Login as user

```sh
sudo -s
```

Type in password
Login as root

```sh
vi /etc/sudoers
# Add this line
user ALL=(ALL:ALL) ALL
```

## Installing i3

```sh
sudo apt install i3
```

## Installing NVIDIA drivers

Login as user\
Install nvidia drivers\
https://wiki.debian.org/NvidiaGraphicsDrivers\
https://linuxconfig.org/how-to-install-nvidia-driver-on-debian-10-buster-linux\

```sh
sudo echo blacklist nouveau > /etc/modprobe.d/blacklist-nvidia-nouveau.conf
sudo echo blacklist nouveau > /etc/modprobe.d/blacklists-nvidia-nouveau.conf
```

## Sound

https://www.alsa-project.org/wiki/Setting_the_default_device

```sh
cat /proc/asound/cards
sudo touch /etc/asound.conf
vim /etc/asound.conf
# Add these two lines to the file
defaults.pcm.card 1
defaults.ctl.card 1
```

## Input

### Increasing scroll wheel speed

https://gitlab.freedesktop.org/xorg/driver/xf86-input-libinput/-/merge_requests/12

```sh
# Check version of libinput
sudo apt install xserver-xorg-input-libinput

git clone https://gitlab.freedesktop.org/xorg/driver/xf86-input-libinput.git
# Replace last numbers with the correct version
git checkout xf86-input-libinput-0.28.2
vim src/xf86libinput.c
# Add value *= 3 on line 1653

sudo apt install xserver-xorg-dev
sudo apt install libinput-dev
sudo apt install xutils-dev
sudo apt build-dep libinput

autoreconf -vif
./configure --prefix=/usr
sudo make
sudo make install
# Restart xorg
```

## Apps

### Chrome

```sh
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb

# Adding dark mode
sudo vim /usr/bin/google-chrome
# Add --force-dark-mode to last line
```

### Numlock

```sh
sudo apt install numlockx
```

### Snap

```sh
sudo apt install snapd
```

### VSCode

```sh
wget -O vscode.deb https://go.microsoft.com/fwlink/?LinkID=760868
sudo apt install ./vscode.deb
```

### Docker

https://docs.docker.com/engine/install/debian/

### Docker-compose

https://docs.docker.com/compose/install/

### Node

https://github.com/nodesource/distributions#debinstall

```sh
sudo curl -fsSL https://deb.nodesource.com/setup_15.x | sudo bash -
sudo apt install nodejs
```

### Discord

```sh
wget -O discord.deb https://discordapp.com/api/download?platform=linux\&format=deb
sudo apt install ./discord.deb
```

### Python/Pip

```sh
sudo apt install python3-pip python3-gi gobject-introspection gir1.2-gtk-3.0 python3-numpy python3-gi-cairo libcairo2-dev
```

### Escrotum

```sh
pip3 install escrotum
```

### Ranger

```sh
pip3 install ranger-fm
```

Image previews

```sh
sudo apt install w3m-img
vim ~/.config/ranger/rc.conf
#Add this line
set preview_images true
```
