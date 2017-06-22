#!/bin/bash

ip=`ip addr show enp0s3 | awk '/inet/ {print $2; exit}' | cut -d/ -f1`
python3 manage.py runserver $ip:8000
