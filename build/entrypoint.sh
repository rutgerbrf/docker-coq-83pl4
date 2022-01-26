#!/bin/bash

echo "$USER:x:$UID:$GID:$USER_REAL_NAME:$HOME:/bin/bash" >> /etc/passwd

cmd="${1:-coqide}"
shift
sudo -i -g \#$GID -u \#$UID $cmd $@
