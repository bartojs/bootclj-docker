FROM java:8-jre

ENV BOOT_VERSION 2.0.0-rc9
ENV BOOT_AS_ROOT yes

ADD https://github.com/boot-clj/boot/releases/download/$BOOT_VERSION/boot.sh /usr/local/bin/boot 
RUN chmod 755 /usr/local/bin/boot

WORKDIR "/home"

RUN /usr/local/bin/boot -h

CMD ["-h"]
ENTRYPOINT ["/usr/local/bin/boot"]
