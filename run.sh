#!/usr/bin/env bash

XSOCK=/tmp/.X11-unix
XAUTH=$(mktemp /tmp/.docker.xauth.XXXXXX)
trap "rm -f $XAUTH" EXIT

USER_REAL_NAME="$(grep "^$(id -un):x:$(id -u):$(id -g):" /etc/passwd | cut -d: -f5 -)"

xauth nlist $DISPLAY | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -
docker run -ti --net host -e HOME -e DISPLAY -e XAUTHORITY=$XAUTH -e USER_NAME=$(id -un) -e USER_UID=$(id -u) -e USER_GID=$(id -g) -e USER_REAL_NAME="$USER_REAL_NAME" -v $XAUTH:$XAUTH -v $XSOCK:$XSOCK -v $HOME:$HOME ghcr.io/rutgerbrf/docker-coq-83pl4:main $@
