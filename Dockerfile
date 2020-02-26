FROM alpine:3.11

ARG DOVECOT_PACKAGE_VERSION=2.3.9.3-r0
RUN apk add --no-cache dovecot=$DOVECOT_PACKAGE_VERSION

VOLUME /etc/ssl/dovecot

CMD ["dovecot", "-F"] 
