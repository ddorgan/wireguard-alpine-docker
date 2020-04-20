#!/bin/bash

/bin/bash "$@"

wg show

# check if Wireguard is running
if [[ $(wg) ]]
then
    syslogd -n      # keep container alive
else
    echo "stopped"  # else exit container
fi

