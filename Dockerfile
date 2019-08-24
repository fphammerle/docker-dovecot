FROM alpine:3.10

RUN apk add --no-cache dovecot

VOLUME /etc/ssl/dovecot

CMD ["dovecot", "-F"] 
