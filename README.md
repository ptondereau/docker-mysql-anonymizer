# WIP
Just a I/O docker that take a dump, mount it into a temp MySQL server, anonymize and re-dump

# Usage

First clone this repository, then:

```bash
$ docker-composer run -e DUMP=$(cat before_dump.sql) anonymizer > dump.sql
$ docker-composer stop && docker-compose -f rm
```