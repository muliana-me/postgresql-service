# Switch PostgreSQL Service
PostgreSQL service is quite heavy, can cause slowing down your system especially when boot up. With this script you can easily switch the service status to inactive when you dont need it or activate it when you need.


## Requirements
* [Git](https://git-scm.com/downloads)

## Installation
Make sure you have [Git](https://git-scm.com/downloads) installed.
```
$ git clone https://github.com/muliana-me/postgresql-service
$ cd postgresql-service
$ chmod +x postgresql.sh
```

## How To Use
**Linux**
```
$ cd postgresql-service
$ sudo ./postgresql.sh
```

Even upon restarting the system, the service status will remain the same.

> `$ systemctl status postgresql.service` see complete status of postgresql service.
