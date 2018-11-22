#!/bin/sh

if [ $(whoami) != "root" ]; then
 echo "You need to be root."
 exit
fi

wget https://raw.githubusercontent.com/karli-sjoberg/egpu/master/xorg.conf.egpu -O /etc/X11/xorg.conf.egpu
chmod 640 /etc/X11/xorg.conf.egpu

wget https://raw.githubusercontent.com/karli-sjoberg/egpu/master/gswitch -O /usr/local/bin/gswitch
chmod +x /usr/local/bin/gswitch
