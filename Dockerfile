FROM i386/ubuntu:16.04
MAINTAINER OEMS "https://github.com/oemunoz"

# install and configure for local debian proxy (if present)
RUN apt-get update && apt-get install -y squid-deb-proxy-client

RUN echo 'Acquire::http::Proxy "http://172.23.33.33:8000/";' | tee /etc/apt/apt.conf.d/30autoproxy  

RUN apt-get update && \
	apt-get install -y synergy sudo

# Replace 1000 with your user / group id
RUN export uid=1000 gid=1000 && \
    mkdir -p /home/developer && \
    echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:${uid}:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown ${uid}:${gid} -R /home/developer

USER developer
ENV HOME /home/developer
CMD /usr/bin/synergy
