#!/bin/sh

export GREEN='\033[0;32m'
export NC='\033[0m' # No Color

echo "Building..."
find /src -type f -name '*.css' \
          -and -not -name '*.min.css' \
          -exec echo -e "      ${GREEN}process {} ${NC}" \; \
          -exec java -jar /usr/share/java/yuicompressor-2.4.8.jar --type css -o '.css$:.min.css' {} \;

find /src -type f -name '*.js' \
          -and -not -name '*.min.js' \
          -exec echo -e "      ${GREEN}process {} ${NC}" \; \
          -exec java -jar /usr/share/java/yuicompressor-2.4.8.jar --type js -o '.js$:.min.js' {} \;
