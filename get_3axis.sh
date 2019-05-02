#!/bin/bash

curl -s http://192.168.0.2:8080/ | tr '>' '\n' | grep "</b$" | sed "s/G<\/b//g" | tr '\n' ' ' | sed -e "s/ $//g"

