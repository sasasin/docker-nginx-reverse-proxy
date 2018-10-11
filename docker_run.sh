#!/bin/bash
cat <<EOF > /etc/nginx/conf.d/default.conf
server {
    listen 80;
    server_name  _;
    access_log off;
    location / {
        proxy_pass ${PROXY_PASS};
    }
}
EOF
nginx -g "daemon off;"
