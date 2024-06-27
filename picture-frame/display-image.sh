#!/bin/sh

wall reloading image

cd "$(dirname "$0")"

rm kindle-picture-frame-image.png
eips -c
eips -c

if wget http://misc.buzzwordoverload.co.uk/kindle-picture-frame-image.png; then
	eips -g kindle-picture-frame-image.png
else
	eips -g image-error.png
fi
