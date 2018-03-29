# Alpine based Ansible docker image

```
docker run -it --rm \
	-w /ansible \
	-v $(pwd):/ansible/playbook \
	-v ~/.ssh/id_rsa:/root/.ssh/id_rsa:ro \
	-e ANSIBLE_HOST_KEY_CHECKING=False \
	bakurin/ansible playbook/provision.yml --key-file "~/.ssh/id_rsa"
```