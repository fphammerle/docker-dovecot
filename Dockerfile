FROM alpine:3.12.3

ARG DOVECOT_PACKAGE_VERSION=2.3.11.3-r1
ARG SOCAT_PACKAGE_VERSION=1.7.3.4-r0
RUN apk add --no-cache \
        dovecot-lmtpd=$DOVECOT_PACKAGE_VERSION \
        dovecot-pigeonhole-plugin=$DOVECOT_PACKAGE_VERSION \
        dovecot=$DOVECOT_PACKAGE_VERSION \
        socat=$SOCAT_PACKAGE_VERSION \
    && find /etc/ssl/dovecot -type f -print -delete

VOLUME /etc/ssl/dovecot

CMD ["dovecot", "-F"]
