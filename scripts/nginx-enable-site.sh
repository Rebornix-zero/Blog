#!/bin/bash
### create soft link to enbale nginx web server for hugo 

PROJECT_PATH=$(pwd)
ln -sf ${PROJECT_PATH}/nginx/*.nginx /etc/nginx/sites-enabled/

systemctl restart nginx
# nginx -s reload