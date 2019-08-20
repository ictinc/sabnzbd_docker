FROM linuxserver/sabnzbd
MAINTAINER Ronald Roeleveld

RUN apt-get update && \
    apt-get install -y \
        git unrar unzip p7zip-full ffmpeg && \
    git clone --depth 1 https://github.com/clinton-hall/nzbToMedia.git /nzbtomedia && \
    apt-get clean && \
    rm -rf \
        /tmp/* \
        /var/lib/apt/lists/* \
        /var/tmp/*

COPY ./conf/cont-init.d/30-nzbtomedia /etc/cont-init.d/30-nzbtomedia
