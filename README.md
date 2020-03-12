# dovecot ✉️ 🐳

Dovecot:
[IMAP](https://doc.dovecot.org/configuration_manual/protocols/imap_server/),
[POP3](https://doc.dovecot.org/configuration_manual/protocols/pop3_server/),
[LMTP](https://doc.dovecot.org/configuration_manual/protocols/lmtp_server/),
[SASL Auth](https://wiki.dovecot.org/HowTo/PostfixAndDovecotSASL) &
[ManageSieve](https://doc.dovecot.org/admin_manual/pigeonhole_managesieve_server/)
Server

https://www.dovecot.org/

## Usage

```sh
docker run --name dovecot \
    -p ... \
    -v $PWD/dovecot.conf:/etc/dovecot/dovecot.conf:ro \
    fphammerle/dovecot
```

## Postfix SASL Auth Setup

http://www.postfix.org/SASL_README.html#server_sasl_enable

```
# dovecot.conf

auth_mechanisms = plain login

passdb {
  # https://wiki.dovecot.org/AuthDatabase/PasswdFile
  # doveadm pw -s BLF-CRYPT -u user -p password
  driver = passwd-file
  args = username_format=%n /etc/dovecot/passwd
}

service auth {
  # https://wiki.dovecot.org/Services#inet_listeners
  inet_listener auth {
    address = *
    port = 12345
  }
}
```

```
# postfix main.cf

smtpd_sasl_auth_enable = yes
smtpd_tls_auth_only = yes
smtpd_sasl_type = dovecot
smtpd_sasl_path = inet:dovecot:12345

smtpd_relay_restrictions = [...], permit_sasl_authenticated, reject_unauth_destination
```

## Deliver Mail From Postfix to Dovecot via LMTP

https://wiki2.dovecot.org/HowTo/PostfixDovecotLMTP
