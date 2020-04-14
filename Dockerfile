FROM ubuntu

# install contentai and docker clis
ENV DOCKER_VERSION 19.03.6

RUN apt-get update && \
    apt-get install curl -y && \
    curl -fsSLo /usr/bin/contentai "http://get-cli.contentai.io/v0.11.0/ncd_linux_amd64" && \
    curl -fsSLO "https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKER_VERSION}.tgz" && \
    tar xzvf docker-${DOCKER_VERSION}.tgz --strip 1 -C /usr/bin docker/docker && \
    rm docker-${DOCKER_VERSION}.tgz && \
    chmod +x /usr/bin/contentai && \
    rm -rf /var/lib/apt/lists/*

ADD entrypoint.sh .
ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]