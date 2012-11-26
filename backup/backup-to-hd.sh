#!/bin/sh

timestamp=`date '+%Y%m%d-%H%M%S'`
filename="/home/pi/tv/backup/pi-${timestamp}.tar.gz"

echo "Start $timestamp"

dpkg-query --show > /home/pi/pkg.list

cd /
tar czvf $filename \
    boot/config.txt \
    home/pi/.hts/ \
    home/pi/.ssh/ \
    etc/fstab \
    home/pi/pkg.list

echo -n "Done "
date '+%Y%m%d-%H%M%S'
