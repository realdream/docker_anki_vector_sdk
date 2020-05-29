#!/bin/bash
docker build ubt18_sdk -t anki_sdk:18.04 --build-arg http_proxy="http://172.17.0.1:8123"  --build-arg https_proxy="http://172.17.0.1:8123"
