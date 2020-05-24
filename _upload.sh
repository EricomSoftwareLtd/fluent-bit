#!/usr/bin/env bash

if [ -z "$1" ]; then
    TAG=`date +"%y%m%d-%H.%M"`
else
    TAG=$1
fi


#echo $TAG
docker tag "securebrowsing/fluent-bit-base:latest" "securebrowsing/fluent-bit-base:"$TAG
docker push "securebrowsing/fluent-bit-base:$TAG"