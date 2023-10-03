#!/bin/bash
podman network create podify
podman run -d -p 6379:6379 --net podify --name redis quay.io/centos7/redis-5-centos7
podman run -d -p 8088:5000 --net podify --name python-app quay.io/slemeur/python-app
