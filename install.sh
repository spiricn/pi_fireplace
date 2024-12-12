#!/bin/bash

main() {
    local user=$1
    local group=$2

    set -ex

    mkdir -p /usr/bin/pi_fireplace
    cp -v start.sh fireplace.mp4 /usr/bin/pi_fireplace/
    chmod a+x /usr/bin/pi_fireplace/start.sh

    cp -v pi_fireplace.service /lib/systemd/system/

    echo "User=$user" >>/lib/systemd/system/pi_fireplace.service
    echo "Group=$group" >>/lib/systemd/system/pi_fireplace.service

    systemctl daemon-reload
    systemctl enable pi_fireplace.service

    # switch to a lightweight window manager or run the video in a console without a desktop environment
    systemctl disable lightdm

    echo "done"
}

main "$@"
