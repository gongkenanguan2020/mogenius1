#!/bin/sh
if [ ! -f UUID ]; then
  UUID="8bf8fa94-5197-4ceb-93ac-aff4a51db964"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

