# このリポジトリは非推奨です

Dockerサポートは https://github.com/nicklegr/entakun に取り込まれました。
こちらのリポジトリは非推奨です。

# Quick Start

```
$ boot2docker ssh
$ sudo mkdir -p /var/lib/docker/mongodb/db
$ docker run --name mongodb -d -v /var/lib/docker/mongodb:/data mongo mongod --smallfiles
$ docker run --name entakun_container -d -p 80:80 --link mongodb:mongodb nicklegr/entakun
```
