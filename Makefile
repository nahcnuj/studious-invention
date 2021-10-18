.PHONY:	all api-server api-server-base
all: api-server

api-server: api-server-base
	@docker compose build api
	@docker compose stop api
	@docker compose up -d api

api-server-base: internal/api
internal/api: api/schema.yaml
	@scripts/generate-api-server-base.bash $< $@

.PHONY: up restart down reboot
up:
	@docker compose up -d

restart:
	@docker compose restart

down:
	@docker compose down

reboot: down up

.PHONY: init
init: api
api:
	@git submodule add git@github.com:nahcnuj/studious-invention-api.git api
