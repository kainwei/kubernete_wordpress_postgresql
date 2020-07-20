#!/bin/bash
service php5.6-fpm start 
service nginx start
#ls /var/log/nginx
#echo $?
tail -f /var/log/nginx/*
