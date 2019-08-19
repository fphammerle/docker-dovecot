# dovecot ✉️ 🐳

Dovecot: IMAP, POP3 & SASL Auth Server

https://www.dovecot.org/

## Usage

```sh
docker run --name dovecot \
    -p ... \
    -v $PWD/dovecot.conf:/etc/dovecot/dovecot.conf:ro \
    fphammerle/dovecot
```
