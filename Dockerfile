FROM ubuntu

# install contentai cli
ENV VERSION "http://get-cli.contentai.io/v0.10.0/ncd_linux_amd64"
RUN apt-get update && \
    apt-get install curl -y && \
    curl -fsSLo contentai $VERSION && \
    chmod +x contentai && \
    mkdir -p ~/.contentai && \
    rm -rf /var/lib/apt/lists/*

ADD entrypoint.sh .
ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]