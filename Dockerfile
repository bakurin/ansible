FROM alpine:3.7

COPY /root/.ssh/config ssh.cfg

RUN apk --update --no-cache add ansible openssh-client && \
    rm -rf /var/cache/apk/* && \
    mkdir -p /etc/ansible && \
    chmod 400 ~/root/ssh/config \
    echo 'localhost' > /etc/ansible/hosts

WORKDIR /ansible

COPY ansible.cfg ansible.cfg

VOLUME /ansible/playbook

CMD [ "ansible-playbook", "--version" ]