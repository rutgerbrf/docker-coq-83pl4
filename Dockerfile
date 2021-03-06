FROM debian:7

COPY build/sources.list /etc/apt/sources.list

RUN apt-get update \
 && apt-get install coq xauth gnome-themes-standard gnome-icon-theme fonts-cantarell libcanberra-gtk-module make sudo -y

COPY build/entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

