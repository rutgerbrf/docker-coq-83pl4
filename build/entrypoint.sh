#!/bin/bash

echo "$USER_NAME:x:$USER_UID:$USER_GID:$USER_REAL_NAME:$HOME:/bin/bash" >> /etc/passwd
echo "#$USER_UID ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

cmd="${1:-coqide}"
shift
sudo -i -g \#$USER_GID -u \#$USER_UID $cmd $@
