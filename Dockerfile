FROM docker.io/alpine:3.22.0

# https://dovecot.org/doc/NEWS
# https://git.alpinelinux.org/aports/log/main/dovecot?h=3.22-stable
ARG DOVECOT_PACKAGE_VERSION=2.4.1-r2
# http://www.dest-unreach.org/socat/
# https://git.alpinelinux.org/aports/log/main/socat?h=3.22-stable
ARG SOCAT_PACKAGE_VERSION=1.8.0.3-r1
RUN apk add --no-cache \
        dovecot-lmtpd=$DOVECOT_PACKAGE_VERSION \
        dovecot-pigeonhole-plugin=$DOVECOT_PACKAGE_VERSION \
        dovecot-pop3d=$DOVECOT_PACKAGE_VERSION \
        dovecot=$DOVECOT_PACKAGE_VERSION \
        socat=$SOCAT_PACKAGE_VERSION \
    && find /etc/ssl/dovecot -type f -print -delete

VOLUME /etc/ssl/dovecot

CMD ["dovecot", "-F"]
