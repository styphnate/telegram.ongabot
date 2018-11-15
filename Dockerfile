# ONGAbot
#
# Version latest

FROM python:alpine
MAINTAINER Thomas Ingvarsson <ingvarsson.thomas@gmail.com>

RUN apk add --no-cache --virtual=build-dependencies gcc g++ make libffi-dev openssl-dev ca-certificates && \
    pip install --upgrade setuptools && \
    pip install --upgrade python-telegram-bot && \
    apk del build-dependencies

COPY src /ongabot

ENV API_TOKEN=''

WORKDIR /ongabot

CMD ["./ongabot.py"]