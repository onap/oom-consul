FROM consul:1.0.6

RUN cd /consul \
    && curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl \
    && chmod +x kubectl

RUN apk update && apk add jq

ENTRYPOINT /usr/local/bin/docker-entrypoint.sh