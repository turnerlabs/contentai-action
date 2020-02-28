#!/bin/sh -l

# create config file
mkdir -p ~/.contentai && \
echo '{"apiKey":"'"$API_KEY"'","apiEndpoint":"https://'$INPUT_ENVIRONMENT'.api.contentai.io"}' > ~/.contentai/config

# execute contentai command with args
sh -c "/root/contentai $*"