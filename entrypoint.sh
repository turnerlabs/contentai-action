#!/bin/sh -l

# create config file
echo '{"apiKey":"'"$API_KEY"'","apiEndpoint":"https://"'$1'".api.contentai.io"}' > ~/.contentai/config
cat ~/.contentai/config

# execute contentai command with args
sh -c contentai "$*"