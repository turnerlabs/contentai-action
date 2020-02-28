#!/bin/sh -l

if [ -n "$API_KEY" ]; then
  echo "$API_KEY is required"
  exit 1
fi

env=prod
if [ -n "$CONTENTAI_ENV" ]; then
  env=$CONTENTAI_ENV
fi

# create config file
mkdir -p ~/.contentai && \
echo '{"apiKey":"'"$API_KEY"'","apiEndpoint":"https://'$env'.api.contentai.io"}' > ~/.contentai/config

# execute contentai command with args
sh -c "contentai $*"