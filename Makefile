.PHONY: build build-images up down check clean clean-mounts backup-diff backup-config update-config reset seedmage-reset seedmage-attach

SHELL := /bin/bash

up:
	docker-compose up -d

down: 
	docker-compose down

update:
	curl -X POST localhost:9090/-/reload
	curl -X POST localhost:9093/-/reload

check:
	docker-compose config

clean: down
	- docker system prune -a -f
