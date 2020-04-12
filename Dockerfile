FROM docker:19.03

RUN apk add --no-cache \
    git nodejs nodejs-npm
RUN apk add -U python3 bash
RUN apk add --virtual=build gcc python3-dev musl-dev libffi-dev openssl-dev make
RUN pip3 install azure-cli==2.3.1
RUN ln -s /usr/bin/python3 /usr/bin/python

