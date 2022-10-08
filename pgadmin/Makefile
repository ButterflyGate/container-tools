.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

startup: ## poadmin 立ち上げ
	./shells/startup.sh
 
restart: ## pgadmin 再起動
	docker-compose down
	./shells/startup.sh
down: ## pgadmin 停止
	docker-compose down
