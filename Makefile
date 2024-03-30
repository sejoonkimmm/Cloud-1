ANSIBLE_COMMAND = ansible-playbook -i ./ansible/inventory ./ansible/playbooks/deploy.yml

all:
	ansible-playbook -i ./ansible/inventory ./ansible/playbooks/deploy.yml -vvv --ask-vault-pass --ask-become-pass

clean:
	@ansible all -i ./ansible/inventory -m shell -a 'sudo docker-compose -f /home/ubuntu/templates/docker-compose.yml down' --ask-become-pass

fclean:
	@ansible all -i ./ansible/inventory -m shell -a 'sudo docker-compose -f /home/ubuntu/sejokim/docker-compose.yml down -v' --ask-become-pass
	@ansible all -i ./ansible/inventory -m shell -a 'sudo docker-compose -f /home/ubuntu/supersejo/docker-compose.yml down -v' --ask-become-pass
	@ansible all -i ./ansible/inventory -m shell -a 'sudo rm -rf /home/sejokim/templates' --ask-become-pass
	@ansible all -i ./ansible/inventory -m shell -a 'sudo rm -rf /home/supersejo/templates' --ask-become-pass

.PHONY: all clean fclean