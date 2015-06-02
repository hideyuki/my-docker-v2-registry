#!/bin/bash

echo $NGINX_BASIC_HTPASSWD > /etc/nginx/.htpasswd
nginx -g "daemon off;"

