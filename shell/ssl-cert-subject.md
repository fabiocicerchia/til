# SSL Subjects

Ref: https://www.shellhacks.com/create-csr-openssl-without-prompt-non-interactive/

```
openssl req -x509 -nodes -newkey rsa:2048 -subj "/C=IT/emailAddress=noreply@example.com/ST=RM/O=PUGX/CN=example.com/OU=IT/" -keyout privkey.pem -out fullchain.pem
```

| Field  | Meaning             | Example         |
|--------+---------------------+-----------------|
| `/C=`  | Country             | GB              |
| `/ST=` | State               | London          |
| `/L=`  | Location            | London          |
| `/O=`  | Organization	       | Global Security |
| `/OU=` | Organizational Unit | IT Department   |
| `/CN=` | Common Name         | example.com     |
