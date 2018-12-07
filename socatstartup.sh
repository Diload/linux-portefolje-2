#!/bin/ash

 socat -v -v tcp-listen:8080,fork,reuseaddr exec:/bin/rng.sh 1>&/dev/null
