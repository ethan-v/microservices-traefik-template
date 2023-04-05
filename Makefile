start-infras:
	docker compose -f docker-compose.infras.yml up -d

stop-infras:
	docker compose -f docker-compose.infras.yml down

clean-infras:
	docker compose -f docker-compose.infras.yml down -v

start:
	docker compose up -d

stop:
	docker compose down

clean:
	docker compose down -v

start-all: start-infras start

clean-all: clean clean-infras

verify-dev:
	curl localhost:3000
	curl localhost:3001
	curl localhost:3002

verify-traefik:
	curl http://example.com
	curl http://api.example.com/account
	curl http://api.example.com/catalog
	curl http://api.example.com/media

docker-ping-account:
	docker compose exec -it account-service curl http://account-service:3000
