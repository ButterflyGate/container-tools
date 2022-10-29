.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

init: ## volume directory を追加
	mkdir -p ./volumes/database


perform-a-factory-reset-%: ## 全削除 
	@CORRECT_PASSWORD=temp
	@$(eval RESET_PASSWORD := ${@:perform-a-factory-reset-%}) 

startup: ## nextcloud 立ち上げ
	./shells/startup.sh
 
restart: ## nextcloud 再起動
	docker-compose down
	./shells/startup.sh

all-reset: ## データ全削除
	sudo rm -rf /mnt/lvm-public/* /mnt/lvm-public/.*
	sudo rm -rf ./volumes/nextcloud/* ./volumes/nextcloud/.*
	sudo rm -rf ./volumes/postgres/* ./volumes/postgres/.*

