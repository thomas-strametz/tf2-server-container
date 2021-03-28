FROM debian:buster
USER root
RUN apt update && \
	apt install -y lib32gcc1 lib32z1 lib32stdc++6 wget && \
	useradd gameserver
USER gameserver
WORKDIR ~
COPY --chown=gameserver . .
RUN chmod +x update.sh && \
	wget http://media.steampowered.com/client/steamcmd_linux.tar.gz && \
	tar zxf steamcmd_linux.tar.gz
