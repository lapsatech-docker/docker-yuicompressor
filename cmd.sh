#!/bin/sh

find /src -type f -name '*.css' \
          -and -not -name '*.min.css' \
          -exec echo Minifying {} \; \
          -exec java -jar /usr/share/java/yuicompressor-2.4.8.jar --type css -o '.css$:.min.css' {} \;

find /src -type f -name '*.js' \
          -and -not -name '*.min.js' \
          -exec echo Minifying {} \; \
          -exec java -jar /usr/share/java/yuicompressor-2.4.8.jar --type js -o '.js$:.min.js' {} \;
