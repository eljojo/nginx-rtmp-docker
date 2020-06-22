#!/bin/sh

echo "configuring nginx"
/bin/sed -i 's/UPSTREAM_HOST/'"$UPSTREAM_HOST"'/g' /etc/nginx/nginx.conf
/bin/sed -i 's/STREAM_NAME/'"$STREAM_NAME"'/g' /etc/nginx/nginx.conf

echo $UPSTREAM_HOST
echo $STREAM_NAME

exec nginx -g "daemon off;"
