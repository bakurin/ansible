FROM alpine:3.7

RUN apk --update --no-cache add ansible && \
    rm -rf /var/cache/apk/* && \
    mkdir -p /etc/ansible && \
    echo 'localhost' > /etc/ansible/hosts

WORKDIR /ansible

CMD [ "ansible-playbook", "--version" ]