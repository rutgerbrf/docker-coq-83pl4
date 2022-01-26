#!/usr/bin/env bash

XSOCK=/tmp/.X11-unix
XAUTH=$(mktemp /tmp/.docker.xauth.XXXXXX)
trap "rm -f $XAUTH" EXIT

USER=$(id -un)
USER_REAL_NAME="$(grep "^$USER:x:$UID:$GID:" /etc/passwd | cut -d: -f5 -)"
xauth nlist $DISPLAY | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -
docker run -ti --net host -e HOME -e DISPLAY -e XAUTHORITY=$XAUTH -e USER -e UID -e GID -e USER_REAL_NAME -v $XAUTH:$XAUTH -v $XSOCK:$XSOCK -v $HOME:$HOME fcd52c19a927 $@
