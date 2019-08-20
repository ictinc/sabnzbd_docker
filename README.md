# sabnzbd_docker
Sabnzbd + nzbtomedia + ffmpeg + git/unrar/unzip/p7zip etc.

This Dockerfile is based on the image from Linuxserver https://www.Linuxserver.io and the work of Erik de Vries https://github.com/edv/docker-sabnzbd.

<b>Quick setup</b></P>
docker run -p 8080:8080 --name sabnzbd -d -v <path to data>:/config -v <path to downloads>:/downloads -v <path to incomplete downloads>:/incomplete-downloads -v /etc/localtime:/etc/localtime:ro erikdevries/sabnzbd

<b>Build Docker container</b>
docker build -t sabnzbd .
