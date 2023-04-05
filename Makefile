start-infras:
	docker compose -f docker-compose.infras.yml up -d

stop-infras:
	docker compose -f docker-compose.infras.yml down

clean-infras:
	docker compose -f docker-compose.infras.yml down -v

start:
	docker compose up -d --build

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
	curl -H Host:myhost.mydomain.org http://127.0.0.1/whoami
	curl -H Host:myhost.mydomain.org http://127.0.0.1/account/


