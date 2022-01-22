#!/usr/bin/env bash

echo -ne "
-------------------------------------------------------------------------
 █████╗ ██████╗  ██████╗██╗  ██╗ █████╗ ██████╗ ██╗   ██╗███████╗███████╗
██╔══██╗██╔══██╗██╔════╝██║  ██║██╔══██╗██╔══██╗╚██╗ ██╔╝██╔════╝██╔════╝
███████║██████╔╝██║     ███████║███████║██████╔╝ ╚████╔╝ ███████╗███████╗
██╔══██║██╔══██╗██║     ██╔══██║██╔══██║██╔══██╗  ╚██╔╝  ╚════██║╚════██║
██║  ██║██║  ██║╚██████╗██║  ██║██║  ██║██████╔╝   ██║   ███████║███████║
╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝    ╚═╝   ╚══════╝╚══════╝
-------------------------------------------------------------------------
                    Automated Arch Linux Setup
                        SCRIPTHOME: ArchAbyss
-------------------------------------------------------------------------
"

sudo pacman -Syu --needed --noconfirm - < pkg-files/pacman-pkgs.txt
sudo fc-cache -f -v

cp -r .xinitrc /etc/X11/xinit/xinitrc

echo -ne "
-------------------------------------------------------------------------
                    Enabling Login Display Manager
-------------------------------------------------------------------------
"
systemctl enable sddm.service

echo -ne "
-------------------------------------------------------------------------
                    Setting up SDDM Theme
-------------------------------------------------------------------------
"
cat <<EOF > /etc/sddm.conf
[Theme]
Current=Nordic
EOF

echo -ne "
-------------------------------------------------------------------------
                            COMPLETE
-------------------------------------------------------------------------
"

sleep 5
exit