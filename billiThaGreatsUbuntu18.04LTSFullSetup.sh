clear
echo "Assalamu-alaikum, your complete setup will be done IN-SHA-ALLAH"
echo "System update and upgrading..."
sudo apt update -y
sudo apt upgrade -y
sudo apt-get install -y  figlet
showfigfonts
sudo apt-get install -y lolcat
lolcat -h
echo "install gome system monitor "
sudo apt-get install -y gir1.2-gtop-2.0 gir1.2-networkmanager-1.0  gir1.2-clutter-1.0
sudo apt-get install -y gir1.2-gtop-2.0 gir1.2-nm-1.0:i386 gir1.2-nm-1.0 gir1.2-clutter-1.0
sudo apt-get install gnome-shell-extension-system-monitor -y


echo "gnome-system tools"
sudo apt-get install gnome-system-tools -y


echo "install adb and flash tools"
sudo add-apt-repository ppa:phablet-team/tools && sudo apt-get update -y


sudo apt-get update && sudo apt-get install android-tools-adb android-tools-fastboot -y



echo "Install woeUSB"
sudo add-apt-repository ppa:nilarimogard/webupd8

sudo apt update -y
sudo apt install woeusb -y

echo "Install qBittorrent"
sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable
sudo apt update -y
sudo apt install qbittorrent -y

echo "CPU check and KVM install"
sudo apt update -y
sudo apt install cpu-checker -y
sudo apt install qemu-kvm libvirt-bin bridge-utils virtinst virt-manager -y
sudo systemctl is-active libvirtd
sudo usermod -aG libvirt $USER
sudo usermod -aG kvm $USER

echo "Install KDE CONNECT"
sudo apt-get install -y kdeconnect

echo "Customizable"
sudo apt install gnome-tweak-tool gnome-shell-extensions chrome-gnome-shell -y

echo "make Swap 10 GB"
#swap memory show
sudo swapon --show
#full memory status position structure showing
df -h
#stop swap if previous found..
sudo swapoff -a
#sudo fallocate -l 10G /swapfile
#sudo dd if=/dev/zero of=/swapfile bs=10240 count=1048576
#bs=1k count=10M, so its 1*10=10GiB
sudo dd if=/dev/zero of=swapfile bs=1K count=10M
sudo fallocate -l 10G /swapfile
sudo chmod 0600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
#echo "make swappiness to 10"
#sudo sysctl vm.swappiness=10
#sudo sysctl -p
#to see changes "not working untill reboot"
cat /proc/sys/vm/swappiness
#"to permanent swappiness edit it::sudo gedit /etc/sysctl.conf and add last value :vm.swappiness = 10"
echo "Turning on x32 with x64 :) "
sudo dpkg --add-architecture i386


echo "Upgrading Firmwares and Drivers"
sudo apt install git-all -y
sudo ubuntu-drivers autoinstall


echo "Stopping snap full"
sudo snap remove snap-store
sudo snap remove gtk-common-themes
sudo snap remove gnome-3-34-1804
sudo snap remove core18
sudo apt purge snapd -y
rm -rf ~/snap
sudo rm -rf /snap
sudo rm -rf /var/snap
sudo rm -rf /var/lib/snapd

echo "for showing System info with neofetch"
sudo apt install neofetch -y
neofetch


echo "snap install"
sudo apt update && sudo apt install -y snapd


echo "Installing Synaptic package manager"
sudo apt-get install synaptic -y
sudo apt update -y
sudo apt upgrade -y

echo "Discord install"
sudo apt install gdebi-core wget -y
sudo snap install discord --classic

echo "Opera and Chromium install"
wget -qO- https://deb.opera.com/archive.key | sudo apt-key add -
sudo add-apt-repository "deb [arch=i386,amd64] https://deb.opera.com/opera-stable/ stable non-free"
sudo apt install opera-stable -y

sudo apt install chromium-browser -y

echo "leafpad and Gedit and VIM install"
sudo apt install leafpad
sudo apt install gedit
sudo add-apt-repository ppa:jonathonf/vim

sudo apt update

sudo apt install vim
sudo apt install vim-gtk3 vim-nox -y

echo "popcornTIME install"
sudo apt update && sudo apt install libcanberra-gtk-module libgconf-2-4
rm -rf /opt/Popcorn-Time
wget https://get.popcorntime.app/repo/build/Popcorn-Time-0.4.4-linux64.zip
sudo mkdir /opt/popcorntime; sudo unzip Popcorn-Time-0.4.4-linux64.zip -d /opt/popcorntime/
sudo ln -sf /opt/popcorntime/Popcorn-Time /usr/bin/Popcorn-Time
cat <<EOT >> /usr/share/applications/popcorntime.desktop
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Name=Popcorn Time
Exec=/opt/popcorntime/Popcorn-Time
Icon=/opt/popcorntime/src/app/images/icon.png
Categories=Application;
EOT

echo "installing build essential extra"

sudo apt-get install -y build-essential git dkms linux-headers-$(uname -r)


echo "Wifi adaptersetup, if you have!"
lsusb|grep Realtek
git clone https://github.com/kelebek333/rtl8188fu.git
cd rtl8188fu/
sudo add-apt-repository ppa:kelebek333/kablosuz -y



sudo apt-get update -y
sudo apt install rtl8188fu-dkms -y
cd $HOME


echo "Installing GIT"
sudo apt install git-all -y


echo "Installing virtualbox"
# add some repo for virtual box
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -

sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian $(lsb_release -sc) contrib" >> /etc/apt/sources.list.d/virtualbox.list'
echo "deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian $(lsb_release -sc) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
sudo apt update -y
sudo apt install virtualbox-6.1 -y
echo " add some repo for veracrypt"
sudo add-apt-repository ppa:unit193/encryption -y



echo " add some repo for uget download manager"
sudo add-apt-repository ppa:plushuang-tw/uget-stable -y



echo " add some repo for .."
sudo add-apt-repository ppa:giuspen/ppa -y



sudo apt update -y


echo "installing cherrytree"
sudo apt install cherrytree -y


echo " install cmd line youtube downlaod manager"
sudo wget https://yt-dl.org/downloads/latest/youtube-dl
sudo chmod +x youtube-dl
sudo cp youtube-dl /usr/bin/youtube-dl


echo "install unrar.."
sudo apt install unrar -y


echo "install vorbis tools."
sudo apt install vorbis-tools -y
sudo apt install veracrypt -y
sudo apt-get install proxychains -y


echo "install secured eraser"
sudo apt install nautilus-wipe -y
sudo apt-get install powertop -y
sudo apt install uget -y
sudo apt install kazam -y
sudo apt install gnome-tweak-tool -y
sudo apt install bleachbit -y


echo "not to show mounted voulmes at desktop"
gsettings set org.gnome.nautilus.desktop volumes-visible 'false'
sudo apt install tmux -y
sudo apt-get install virtualbox-6.1 -y


echo "remove screen rotation."
sudo systemctl stop iio-sensor-proxy.service
sudo systemctl disable iio-sensor-proxy.service
sudo apt-get remove iio-sensor-proxy -y


sudo apt clean && sudo apt autoclean && sudo apt autoremove -y


echo "The package rkhunter is in the repos, so just..."
sudo apt-get install rkhunter -y
sudo apt-get install chkrootkit -y
sudo apt install git -y


echo "uncomment all deb-src then install pidgin dependecies"
sudo add-apt-repository ppa:kip/pidgin
sudo apt update -y
sudo apt-get build-dep pidgin -y
sudo apt-get install pidgin -y
sudo apt-get install pidgin-otr -y
sudo apt install gnupg1 -y


echo "installing tor network"
echo "Download and run!"
sudo apt install apt-transport-https
wget -q -O - https://deb.torproject.org/torproject.org/A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89.asc | sudo apt-key add -
echo "deb https://deb.torproject.org/torproject.org $(lsb_release -cs) main" | sudo tee -a /etc/apt/sources.list
wget https://www.torproject.org/dist/torbrowser/6.5.2/tor-browser-linux64-6.5.2_en-US.tar.xz
sudo add-apt-repository ppa:micahflee/ppa
sudo apt update -y
sudo apt install tor deb.torproject.org-keyring torbrowser-launcher -y
sudo apt install torbrowser-launcher -y
sudo apt install tor -y
gpg --homedir "$HOME/.local/share/torbrowser/gnupg_homedir" --refresh-keys --keyserver keyserver.ubuntu.com



echo "setup at veracypt4"
cd ~/Downloads/gpg4usb/bin
mv ./gpg gpg.orig
ln -s $(which gpg1) gpg


echo " Avro installing"
cd $HOME
wget "https://github.com/ugcoder/avro/releases/download/v2.0/avro_2.0-1_all.deb"
sudo dpkg -i avro_2.0-1_all.deb
sudo apt-get install -y -f
ibus restart
cd $HOME


echo " start safe eyes and setup."
sudo apt install safeeyes -y


echo "delete bluetooth"
sudo apt-get autoremove blueman bluez-utils bluez bluetooth -y
echo "ip tables"
sudo apt install iptables-persistent -y
sudo systemctl enable netfilter-persistent


echo "Finally, you need to ensure the grub.conf file has suitable ownership and permissions to ensure only those authorized can work with the file. Enter the following:"
sudo chown root:root /etc/grub.conf
sudo chmod 0600 /etc/grub.conf


echo "Then you need to ensure the inittab file has the correct ownerships and permissions to ensure only those authorized can work with the file."
sudo chown root:root /etc/inittab


echo "You also need to secure the securetty file to ensure it is modifiable only by root. Enter the following:"
sudo chown root:root /etc/securetty
sudo chmod 600 /etc/securetty


#echo " setup time zone"
#sudo timedatectl set-timezone UTC


echo "show date in top bar"
gsettings set org.gnome.desktop.interface clock-show-date true


echo "installing programming stuff(Codeblocks::Vscode::node JS::intelij::AndroidStudio::Pycharm): if you dont want, you can cancel by pressing Ctrl+c"|lolcat

sudo apt install snapd -y
echo "VS CODE"
sudo apt install software-properties-common apt-transport-https wget -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"



sudo apt update -y
sudo apt install code -y
sudo apt upgrade -y



echo "CODE::BLOCKS"
sudo add-apt-repository ppa:codeblocks-devs/release 





sudo apt update -y
sudo apt install codeblocks codeblocks-contrib -y


echo "PYTHON & PYCHARM"
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:deadsnakes/ppa



sudo apt update -y
sudo apt install python3.8 -y
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev wget -y
sudo snap install pycharm-community --classic


echo "JAVA & INTELIJ & ECLIPSE & NETBEANS"
sudo apt install default-jre -y
sudo apt install openjdk-11-jre-headless -y
sudo apt install openjdk-8-jre-headless -y
sudo snap install intellij-idea-community --classic
sudo snap install --classic eclipse
sudo snap install netbeans --classic

echo "ANDROID STUDIO CANARY BUILD(FOR:AMD PROCESSOR)"
sudo snap install android-studio-canary --classic
echo "NODE JS"
sudo apt update -y
sudo apt install nodejs -y
sudo apt install npm -y


echo "Basic Programming IDE and Editor installation done................"
echo "installing google chromium(Opensource chrome)"
sudo apt install chromium-browser -y


echo "dconf editor install"
sudo apt update -y
sudo apt install dconf-editor


echo "gnome desktop full feture install"
sudo apt install gnome -y
sudo apt-get install gnome-shell ubuntu-gnome-desktop -y
sudo apt install gnome-session gdm3 -y
sudo apt install tasksel -y
sudo tasksel install ubuntu-desktop
sudo apt update -y
sudo apt upgrade -y


#echo "Unity desktop full feature install :)  "
#sudo apt update -y
#sudo apt install ubuntu-unity-desktop -y
#sudo apt install unity-tweak-tool -y


#echo "ONLY UNITY DESKTOP, NOT FOR GNOME .compiz config settings manager for unity desktop and gnome also, some property not work properly in Gnome, but it is cool"
#sudo apt install compizconfig-settings-manager -y
#sudo apt update -y


echo "ShotcutVIDEO Editor install"
sudo add-apt-repository ppa:haraldhv/shotcut -y



sudo apt-get update && sudo apt-get upgrade -y
sudo apt install shotcut -y
echo "OBS Studio install"
sudo add-apt-repository ppa:obsproject/obs-studio -y



sudo apt-get update -y
sudo apt-get install obs-studio -y
echo "handbrake Video compressor install"
sudo add-apt-repository ppa:stebbins/handbrake-releases -y



sudo apt install handbrake-gtk handbrake-cli -y
echo "TestDisk File recovery install"
sudo apt-get install testdisk -y
echo "installing pinta "
sudo apt-get update -y
sudo apt-get install pinta -y
echo "install kolourpaint"
sudo apt update -y
sudo apt-get install -y kolourpaint


echo "Wine and Vulkan library and luitris install"
sudo dpkg --add-architecture i386
wget -nc https://dl.winehq.org/wine-builds/winehq.key; sudo apt-key add winehq.key


sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main' -y


sudo add-apt-repository ppa:cybermax-dexter/sdl2-backport -y




sudo apt install --install-recommends winehq-stable -y
sudo apt update && sudo apt install --install-recommends winehq-staging -y
sudo add-apt-repository ppa:lutris-team/lutris -y



sudo apt-get update -y
sudo apt-get install lutris -y


#FOR ADB::::apt install libvulkan1 mesa-vulkan-drivers vulkan-utils -y
sudo add-apt-repository ppa:graphics-drivers/ppa -y



sudo apt install nvidia-driver-440 libnvidia-gl-440 libnvidia-gl-440:i386 -y
sudo apt install libvulkan1 libvulkan1:i386 -y
sudo apt upgrade -y
sudo apt install vulkan-utils -y
sudo apt update -y
sudo apt upgrade -y
#sudo apt autoremove -y
echo "Install Pacman package manager "
sudo apt-get update -y
sudo apt-get install -y pacman








clear
echo "Just Animation :)"
clear
figlet -f big  "WELCOME!"
echo -ne '###                                            (5%)\r'
sleep 1
echo -ne '######                                         (10%)\r'
sleep 1
echo -ne '###########                                    (20%)\r'
sleep 1
echo -ne '###################                            (40%)\r'
sleep 1
echo -ne '###########################                    (60%)\r'
sleep 1
echo -ne '##################################             (80%)\r'
sleep 1
echo -ne '############################################   (100%)\r'
echo -ne '\n'
clear
sudo su
cat <<EOT >>/etc/bash.bashrc
clear
figlet -f mini "Billi The Great!"|lolcat
EOT
exit
figlet -f mini "Billi The Great!"
