# Dockerfile for netease-cloud-music
FROM docker.io/ubuntu:16.04
LABEL name=netease-cloud-music \
    version=1.0.0 \
    release=2 \
    maintainer='Yuxiang Zhu <vfreex@gmail.com>'

ARG NETEASE_CLOUD_MUSIC_URL=http://s1.music.126.net/download/pc/netease-cloud-music_1.0.0-2_amd64_ubuntu16.04.deb

RUN \
    apt-get update && \
    apt-get install -y --no-install-recommends wget && \
    wget -O /tmp/netease-cloud-music.deb "$NETEASE_CLOUD_MUSIC_URL" && \
    apt-get install -y --no-install-recommends /tmp/netease-cloud-music.deb && \
    apt-get install -y --no-install-recommends dbus-x11 libcanberra-gtk-module \
        packagekit-gtk3-module ca-certificates fonts-wqy-zenhei locales \
        libnss-wrapper gettext && \
    rm -rf /var/lib/apt/lists/* && \
    localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8 && \
    mkdir -p /home/music && chgrp -R 0 /home/music && chmod -R g+rwX /home/music

COPY files/ /
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/usr/bin/netease-cloud-music", "--no-sandbox"]
USER 1000
ENV LANG=zh_CN.UTF-8

