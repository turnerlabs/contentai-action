FROM ubuntu

# install contentai cli
ENV VERSION "http://get-cli.contentai.io/v0.10.0/ncd_linux_amd64"
RUN curl -fsSLo contentai $VERSION && \
    chmod +x contentai && \
    mkdir -p ~/.contentai && \
    echo '{"apiKey":"'"$API_KEY"'","apiEndpoint":"https://prod.api.contentai.io"}' > ~/.contentai/config

ENTRYPOINT ["/entrypoint.sh"]
