#!/bin/sh -l

# create config file
echo '{"apiKey":"'"$API_KEY"'","apiEndpoint":"https://'$INPUT_ENVIRONMENT'.api.contentai.io"}' > ~/.contentai/config

# execute contentai command with args
sh -c "./contentai $*"