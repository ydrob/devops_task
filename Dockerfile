FROM alpine

# Install packages
RUN apk update && apk add --update --no-cache \
    bash \
    python3 \
    py3-pip \
    py-cryptography \
    wget \
    curl

RUN apk --no-cache add --virtual builds-deps build-base python3

RUN pip install --upgrade pip && \
    pip install --upgrade awscli


WORKDIR /tmp
COPY /back/init.sh .
ENTRYPOINT ["/bin/bash", "-c", "./init.sh"]