#!/bin/bash

echo "$USER_NAME:x:$USER_UID:$USER_GID:$USER_REAL_NAME:$HOME:/bin/bash" >> /etc/passwd

cmd="${1:-coqide}"
shift
sudo -i -g \#$USER_GID -u \#$USER_UID $cmd $@
