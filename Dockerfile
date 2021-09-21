FROM alpine

ARG KUBECTL_VERSION=1.17.5

RUN apk --no-cache add curl

RUN curl -sLO https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl && \
    mv kubectl /usr/bin/kubectl && \
    chmod +x /usr/bin/kubectl

WORKDIR /apps

ENTRYPOINT [""]

CMD ["sleep", "infinity"]
