FROM alpine:3.7
LABEL maintainer="Michael H. Oshita <ijinpublic+github@gmail.com>"

RUN apk --update add python py-pip git
RUN pip install awsebcli===3.7.3

RUN mkdir ~/.aws

WORKDIR /app

ENTRYPOINT ["eb"]
