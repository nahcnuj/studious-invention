.PHONY:	all build run up restart down

all: api-skelton-server build

build: docker-compose.yml
	@$(MAKE) down
	@docker compose build
	@$(MAKE) up

run: build
	@docker compose up

up:
	@docker compose up -d

restart:
	@docker compose restart

down:
	@docker compose down

.PHONY: api-skelton-server
api-skelton-server: internal/api/v1-default

internal/api/v1-default: api/openapi-schema/openapi.yaml
	@scripts/generate-openapi-default-server.bash $< $@
