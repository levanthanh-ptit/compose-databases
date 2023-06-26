postgres:
	docker compose -f postgres.docker-compose.yml up -d

mongos:
	docker compose -f mongo.docker-compose.yml up -d 
	sleep 5
	docker exec mongo_c1 /scripts/init-replica-set.sh

all:
	make postgres
	make mongos