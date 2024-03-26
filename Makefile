ANSIBLE_COMMAND = ansible-playbook -i ./ansible/inventory ./ansible/playbooks/deploy.yml

all:
	ansible-playbook -i ./ansible/inventory ./ansible/playbooks/deploy.yml --ask-vault-pass --ask-become-pass

clean:
	@ansible all -i ./ansible/inventory -m shell -a 'sudo docker-compose -f /home/ubuntu/Docker/docker-compose.yml down' --ask-become-pass

fclean:
	@ansible all -i ./ansible/inventory -m shell -a 'sudo docker-compose -f /home/ubuntu/Docker/docker-compose.yml down -v' --ask-become-pass

.PHONY: all clean fclean

## cloud-1 DNS가 cloud-2 인스턴스다