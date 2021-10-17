.PHONY:	all
all: api-server api-document

.PHONY: api-server api-skelton-server api-document
api-server: api-skelton-server api-document
	@docker compose build api
	@docker compose stop api
	@docker compose up -d api

api-skelton-server: internal/api
internal/api: api/openapi-schema/openapi.yaml
	@scripts/generate-openapi-default-server.bash $< $@

api-document: docs/api/v1
docs/api/v1: api/openapi-schema/openapi.yaml
	@#scripts/generate-openapi-document.bash $< $@

.PHONY: up restart down reboot
up:
	@docker compose up -d

restart:
	@docker compose restart

down:
	@docker compose down

reboot: down up
