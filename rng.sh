#!/bin/ash

dd if=/dev/urandom bs=4 count=16 status=none | od -A none -t u4
