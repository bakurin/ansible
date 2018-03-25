# Alpine based Ansible docker image

```
docker run -it --rm \
	-w /ansible \
	-v $(pwd):/ansible/playbook \
	-v ~/.ssh:/root/.ssh:ro \
	bakurin/ansible
```