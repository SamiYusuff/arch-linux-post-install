sudo pacman -Syu openbox xfce4-panel dunst numlockx obconf lxappearance-gtk3 lxapperance-obconf-gtk3 xorg network-manager-applet bleachbit curl git file-roller inxi rsync unrar unzip wget gnome-disks rofi codium firefox filezilla telegram-desktop mpv gpick ristretto mousepad gstreamer gst-plugins-good gst-plugins-bad gst-plugins-ugly ffmpeg zramswap xdg-user-dirs --noconfirm --needed

sudo pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com && sudo pacman-key --lsign-key FBA220DFC880C036 && sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'--noconfirm --needed

cd /tmp && git clone https://aur.archlinux.org/yay-git.git && cd yay-git && makepkg -si && sudo systemctl enable zramswap.service && xdg-user-dirs-update

sudo pacman -Syu opendoas --noconfirm --needed && echo "permit :wheel" | sudo tee /etc/doas.conf && echo "permit nopass keepenv :wheel" | sudo tee /etc/doas.conf && doas pacman -Rnc sudo  --noconfirm --needed && doas ln -s /bin/doas /bin/sudo
