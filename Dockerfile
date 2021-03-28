FROM debian:10.6
USER root
RUN dpkg --add-architecture i386 && \
    apt update && \
    apt install -y lib32z1 libncurses5:i386 libbz2-1.0:i386 lib32gcc1 lib32stdc++6 libtinfo5:i386 libcurl3-gnutls:i386 wget && \
    useradd gameserver
WORKDIR /gameserver
RUN chown gameserver:gameserver /gameserver
USER gameserver
COPY --chown=gameserver . .
RUN wget http://media.steampowered.com/client/steamcmd_linux.tar.gz && \
    tar zxf steamcmd_linux.tar.gz && \
	./update.sh