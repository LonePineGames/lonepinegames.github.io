#!/bin/bash

ffmpeg -y -i $1 -c:v libx264 -b:v 2600k -pass 1 -an -f mp4 /dev/null && \
ffmpeg -i $1 -c:v libx264 -b:v 2600k -pass 2 -an $2.mp4

ffmpeg -y -i $1 -c:v libvpx-vp9 -b:v 2600k -pass 1 -an -f webm /dev/null && \
ffmpeg -i $1 -c:v libvpx-vp9 -b:v 2600k -pass 2 -an $2.webm

