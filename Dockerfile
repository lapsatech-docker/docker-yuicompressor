FROM java:jre

MAINTAINER "Vadim Isaev" <vadim.o.isaev@gmail.com>

RUN mkdir -p /usr/share/java && \
	curl -L -C - -O https://github.com/yui/yuicompressor/releases/download/v2.4.8/yuicompressor-2.4.8.jar && \
	mv yuicompressor-2.4.8.jar /usr/share/java

COPY entrypoint-yuicompressor.sh /entrypoint-yuicompressor.sh

ENTRYPOINT ["/entrypoint-yuicompressor.sh"]

VOLUME /resources
WORKDIR /resources
