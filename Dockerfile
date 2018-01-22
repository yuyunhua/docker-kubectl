FROM alpine:3.7

#
ENV KUBECTL_VERSION=v1.9.2
ENV KUBECTL_DOWNLOAD_URL=https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl

# step 1. install curl
# step 2. download kubectl
# step 3. remove curl
# step 4. make the kubectl binary exectuable
# step 5. move the binary in to your PATH
# step 6. create a directory named .kube in $HOME
RUN apk --quiet --no-cache add curl \
    && curl -LO --silent ${KUBECTL_DOWNLOAD_URL} \
    && apk --quiet del curl \
    && chmod +x kubectl \
    && mv kubectl /usr/local/bin/kubectl \
    && mkdir -p ~/.kube/

VOLUME /root/.kube/ /root/.kube/config