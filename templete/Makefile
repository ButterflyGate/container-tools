.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

init: ## volume directory を追加
	mkdir -p ./volumes/SERVICE

perform-a-factory-reset-%: ## 全削除 
	@CORRECT_PASSWORD=temp
	@$(eval RESET_PASSWORD := ${@:perform-a-factory-reset-%}) 

startup: ## SERVICE 立ち上げ
	./shells/startup.sh

down: ## SERVICE 終了
	docker-compose down

restart: ## SERVICE 再起動
	docker-compose down
	./shells/startup.sh
