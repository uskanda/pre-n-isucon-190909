#!/bin/bash
cp ./config/nginx.conf /etc/nginx/nginx.conf
cp ./config/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
cp ./config/isubata.service /etc/systemd/system
systemctl daemon-reload
systemctl restart mysql
systemctl reload nginx
systemctl start isubata
systemctl enable isubata
