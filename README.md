to change username and password
```
sudo htpasswd -c /etc/squid/passwords username_you_like
copy /etc/squid/passwords /root/conf
docker-compose build
```

/etc/squid/squid.conf
```
auth_param basic program /usr/lib/squid/digest_pw_auth /etc/squid/passwords
auth_param basic realm proxy
acl authenticated proxy_auth REQUIRED
http_access allow authenticated
```

**reference**
https://stackoverflow.com/questions/3297196/how-to-set-up-a-squid-proxy-with-basic-username-and-password-authentication