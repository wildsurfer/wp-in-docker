About
-----

This is a quick start config for average production WordPress environment.

Run
---

```
export DOMAIN_NAME=test.com
export DEV_SFTP_PASS=S0mepaSSw0rd
export CS_SFTP_PASS=S0mepaSSw0rd
export MYSQL_ROOT_PASSWORD=S0mepaSSw0rd

docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d
```

Debug environment variables
---------------------------

```
docker-compose -f docker-compose.yml -f docker-compose.prod.yml config
```

Note
----

If you face with strange problems when switching between different environment
variables be sure to cleanup all volumes like this:

```
docker-compose stop && docker-compose rm -f && docker volume ls -q | xargs docker volume rm
```
