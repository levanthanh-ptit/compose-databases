postgres:
	docker compose -f postgres.docker-compose.yml up -d
mongo:
	docker compose -f mongo.docker-compose.yml up -d
all:
	docker compose -f postgres.docker-compose.yml up -d
	docker compose -f mongo.docker-compose.yml up -d