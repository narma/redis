#!/bin/sh
DIR=/home/narma/w/personal/narma.github.io/public/js
JS_NAME=redis-server.js
JS_PATH="$DIR/$JS_NAME"

cp rserver.js $JS_PATH
sed -i -r -e 's/rserver.js.mem/\/public\/js\/redis-server.js.mem/' $JS_PATH
cp rserver.js.mem /home/narma/w/personal/narma.github.io/public/js/redis-server.js.mem
