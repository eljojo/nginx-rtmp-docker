#!/bin/sh
env
echo "configuring nginx"
/bin/sed -i 's/UPSTREAM_HOST/'"$UPSTREAM_HOST"'/g' /etc/nginx/nginx.conf
/bin/sed -i 's/STREAM_NAME/'"$STREAM_NAME"'/g' /etc/nginx/nginx.conf

/bin/sed -i 's/STREAM_NAME/'"$STREAM_NAME"'/g' /var/www/static/index.html
/bin/sed -i 's/LEGACY_DOMAIN/'"$LEGACY_DOMAIN"'/g' /var/www/static/index.html
/bin/sed -i 's/DOMAIN/'"$DOMAIN"'/g' /var/www/static/index.html

exec nginx -g "daemon off;"
