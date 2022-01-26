FROM debian:7

COPY build/sources.list /etc/apt/sources.list
COPY build/entrypoint.sh /entrypoint.sh
 
RUN apt-get update \
 && apt-get install coq xauth gnome-themes-standard libcanberra-gtk-module sudo -y

ENTRYPOINT ["/entrypoint.sh"]

