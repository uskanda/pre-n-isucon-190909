#!/bin/bash
cp ./config/nginx.conf /etc/nginx/nginx.conf
cp ./config/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
systemctl restart mysql
systemctl reload nginx
