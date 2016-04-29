FROM gliderlabs/alpine
MAINTAINER Jonathan Azoff <dev@beomni.com>

ADD get-pip.py get-pip.py
RUN apk add --update python3 && rm /var/cache/apk/*
RUN python3 get-pip.py && rm get-pip.py
RUN pip3 install awscli
RUN echo aws --version

ENTRYPOINT ["aws"]
