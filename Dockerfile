FROM alpine:latest

ENV LC_ALL=en_US.UTF-8

RUN apk add --update --no-cache mariadb mariadb-client python py-pip \
	&& pip install pyyaml \
	&& rm -rf /var/cache/apk/*

COPY anonymize.conf .
COPY anonymize.py .

ENTRYPOINT ["./docker-entrypoint.sh"]
