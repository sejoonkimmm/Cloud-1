ANSIBLE_COMMAND = ansible-playbook -i ./ansible/inventory ./ansible/playbooks/deploy.yml

all:
	ansible-playbook -i ./ansible/inventory ./ansible/playbooks/deploy.yml --ask-vault-pass

clean:
	@echo "Cleaning up"

re: fclean all

fclean:	clean
	@echo "Undoing the deployment..."

.PHONY = all clean re fclean