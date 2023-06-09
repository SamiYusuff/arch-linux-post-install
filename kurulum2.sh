sudo pacman -Syu opendoas --noconfirm --needed && echo "permit :wheel" | sudo tee /etc/doas.conf && echo "permit nopass keepenv :wheel" | sudo tee /etc/doas.conf && doas pacman -Rns xterm --noconfirm && doas pacman -Rnc sudo --noconfirm && doas ln -s /bin/doas /bin/sudo && sudo pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com && sudo pacman-key --lsign-key FBA220DFC880C036 && sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst' --noconfirm --needed && echo "[multilib]" | sudo tee -a /etc/pacman.conf && echo "Include = /etc/pacman.d/mirrorlist" | sudo tee -a /etc/pacman.conf && echo "[chaotic-aur]" | sudo tee -a /etc/pacman.conf && echo "Include = /etc/pacman.d/chaotic-mirrorlist" | sudo tee -a /etc/pacman.conf && sudo pacman -Syu openbox xfce4-panel xfce4-screenshooter xfce4-terminal thunar dunst numlockx obconf lxappearance-gtk3 xorg network-manager-applet networkmanager bleachbit curl git file-roller inxi rsync pfetch unrar unzip wget gnome-disk-utility rofi codium youtube-music-bin firefox filezilla telegram-desktop mpv lxtask-gtk3 gpick ristretto pulseaudio pa-applet-git mousepad feh nvidia nvidia-settings nvidia-utils gstreamer gst-plugins-good gst-plugins-bad gst-plugins-ugly ffmpeg xdg-user-dirs --noconfirm --needed && xdg-user-dirs-update && sudo rm -r /usr/share/icons && sudo rm -r /usr/share/themes && sudo mkdir /usr/share/icons && sudo mkdir /usr/share/themes && unzip gruvbox-material-dark-blocks.zip && sudo mv gruvbox-material-dark-blocks /usr/share/themes && git clone https://github.com/SylEleuth/gruvbox-plus-icon-pack.git && sudo mv gruvbox-plus-icon-pack/ /usr/share/icons/ && sudo mv /usr/share/icons/gruvbox-plus-icon-pack/Gruvbox-Plus-Dark /usr/share/icons && mv openbox ~/.config/ && mv xfce4 ~/.config/ && unzip Gruvbox-Dark-BL.zip && sudo mv Gruvbox-Dark-BL /usr/share/themes && unzip GruvboxMouse.zip && sudo mv GruvboxMouse /usr/share/icons && sudo mkdir /usr/share/backgrounds && sudo mv wp.jpg /usr/share/backgrounds && echo "[Autologin]" | sudo tee -a /etc/sddm.conf && echo "User=samiarch" | sudo tee -a /etc/sddm.conf && echo "Session=openbox" | sudo tee -a /etc/sddm.conf && mkdir ~/Pictures/Screenshoots && echo "pfetch" >> tee ~/.bashrc && echo "alias besclear='doas pacman -Rns $(pacman -Qdtq)'" >> tee ~/.bashrc && echo "alias bescheck='doas pacman -Scc'" >> tee ~/.bashrc &&  mv gtk-3.0/ ~/.config/ && sudo cp -r ~/.config/gtk-3.0/ /root/.config
