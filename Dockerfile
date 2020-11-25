FROM consul:1.0.6

RUN cd /consul \
    && curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl \
    && chmod +x kubectl \
    && apk add --no-cache jq

COPY ./docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT /usr/local/bin/docker-entrypoint.sh
