all:
	docker-compose up --build

clean:
	docker-compose down

re:
	clean all

fclean:
	docker-compose down -v

.PHONY:
	all clean re fclean