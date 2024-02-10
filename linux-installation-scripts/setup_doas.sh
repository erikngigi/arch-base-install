#!/bin/bash

echo "permit nopass keepenv setenv { USER=eric HOME=/home/eric XAUTHORITY=/home/eric/.Xauthority } eric" > /etc/doas.conf
