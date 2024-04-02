ANSIBLE_COMMAND = ansible-playbook -i ./ansible/inventory ./ansible/playbooks/deploy.yml

set:
	@ansible-playbook -i ./ansible/inventory ./ansible/playbooks/setup.yml --ask-become-pass

all:
	ansible-playbook -i ./ansible/inventory ./ansible/playbooks/deploy.yml --ask-vault-pass --ask-become-pass

clean:
	@ansible-playbook -i ./ansible/inventory ./ansible/playbooks/down.yml --ask-become-pass

fclean:
	@ansible-playbook -i ./ansible/inventory ./ansible/playbooks/destroy.yml --ask-become-pass

.PHONY: all clean fclean set