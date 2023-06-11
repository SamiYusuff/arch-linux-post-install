sudo pacman -Syu opendoas --noconfirm --needed && echo "permit :wheel" | sudo tee -a /etc/doas.conf && echo "permit nopass keepenv :wheel" | sudo tee -a /etc/doas.conf && doas pacman -Rns xterm --noconfirm && doas pacman -Rnc stoken sudo --noconfirm && doas ln -s /bin/doas /bin/sudo && sudo pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com && sudo pacman-key --lsign-key FBA220DFC880C036 && sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst' --noconfirm --needed && echo "[multilib]" | sudo tee -a /etc/pacman.conf && echo "Include = /etc/pacman.d/mirrorlist" | sudo tee -a /etc/pacman.conf && echo "[chaotic-aur]" | sudo tee -a /etc/pacman.conf && echo "Include = /etc/pacman.d/chaotic-mirrorlist" | sudo tee -a /etc/pacman.conf && sudo pacman -Syu openbox xfce4-panel xfce4-screenshooter xfce4-terminal thunar dunst numlockx obconf lxappearance-gtk3 xorg network-manager-applet networkmanager bleachbit curl git file-roller inxi rsync pfetch unrar unzip wget gnome-disk-utility rofi codium youtube-music-bin firefox filezilla metadata-cleaner youtube-music-git android-studio steam-native-runtime upscayl-bin heroic-games-launcher-bin  telegram-desktop mpv lxtask-gtk3 gpick ristretto wireplumber pipewire pipewire-pulse pavucontrol pipewire-alsa pipewire-audio pipewire-jack xfce4-pulseaudio-plugin mousepad feh nvidia nvidia-settings nvidia-utils opencl-nvidia vulkan lib32-vulkan-icd-loader vulkan-icd-loader gstreamer gst-plugins-good gst-plugins-bad gst-plugins-ugly ffmpeg xdg-user-dirs --noconfirm --needed && xdg-user-dirs-update && sudo rm -rf /usr/share/icons && sudo rm -rf /usr/share/themes && sudo mkdir /usr/share/icons && sudo mkdir /usr/share/themes && unzip gruvbox-material-dark-blocks.zip && sudo mv -i gruvbox-material-dark-blocks /usr/share/themes && git clone https://github.com/SylEleuth/gruvbox-plus-icon-pack.git && sudo mv -i gruvbox-plus-icon-pack/ /usr/share/icons/ && sudo mv -i /usr/share/icons/gruvbox-plus-icon-pack/Gruvbox-Plus-Dark /usr/share/icons && sudo rm -rf /usr/share/icons/gruvbox-plus-icon-pack && mv openbox ~/.config/ && mv xfce4 ~/.config/ && unzip Gruvbox-Dark-BL.zip && sudo mv Gruvbox-Dark-BL /usr/share/themes && unzip GruvboxMouse.zip && sudo mv -i GruvboxMouse /usr/share/icons && sudo mkdir /usr/share/backgrounds && sudo mv -i wp.jpg /usr/share/backgrounds && echo "[Autologin]" | sudo tee -a /etc/sddm.conf && echo "User=samiarch" | sudo tee -a /etc/sddm.conf && echo "Session=openbox" | sudo tee -a /etc/sddm.conf && mkdir ~/Pictures/Screenshoots && echo "pfetch" | tee -a ~/.bashrc && echo "alias besclear='doas pacman -Rns $(pacman -Qdtq)'" | tee -a ~/.bashrc && echo "alias bescheck='doas pacman -Scc'" | tee -a ~/.bashrc &&  mv -i gtk-3.0/ ~/.config/ && sudo cp -r ~/.config/gtk-3.0/ /root/.config && sudo pacman -Rns lftp vim --noconfirm && sudo rm -rf /usr/share/applications/avahi-discover.desktop && sudo rm -rf /usr/share/applications/bssh.desktop && sudo rm -rf /usr/share/applications/bvnc.desktop && sudo rm -rf /usr/share/applications/qv4l2.desktop && sudo rm -rf /usr/share/applications/qvidcap.desktop && sudo rm -rf /usr/share/applications/rofi.desktop && sudo rm -rf /usr/share/applications/rofi-theme-selector.desktop && reboot
