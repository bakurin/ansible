# Alpine based Ansible docker image

```
docker run -it --rm \
	-w /ansible \
	-v $(pwd):/ansible/playbook \
	-v ~/.ssh/id_rsa:/root/.ssh/id_rsa:ro \
	-e ANSIBLE_HOST_KEY_CHECKING=False \
	510337797266.dkr.ecr.eu-west-1.amazonaws.com/deployer playbook/provision.yml --key-file "~/.ssh/id_rsa"
```