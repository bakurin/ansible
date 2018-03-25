FROM alpine:3.7

RUN apk --update --no-cache add ansible openssh-client && \
    rm -rf /var/cache/apk/* && \
    mkdir -p /etc/ansible && \
    echo 'localhost' > /etc/ansible/hosts

WORKDIR /ansible

COPY ansible.cfg ansible.cfg

CMD [ "ansible-playbook", "--version" ]