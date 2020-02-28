FROM ubuntu

# install contentai cli
ENV VERSION "http://get-cli.contentai.io/v0.10.0/ncd_linux_amd64"
RUN apt update && \
    apt install curl -y && \
    curl -fsSLo contentai $VERSION && \
    chmod +x contentai && \
    mkdir -p ~/.contentai && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/entrypoint.sh"]
