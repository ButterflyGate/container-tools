.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

init: ## 初期設定を行う。初起動時以外に使用しない。volume directory, env file を追加する。
	./shells/init.sh

startup: ## nextcloud 立ち上げ
	./shells/container-control.sh startup

down: ## nextcloud 終了
	./shells/container-control.sh down

restart: ## nextcloud 再起動
	docker-compose down
	./shells/container-control.sh restart

all-reset: ## データ全削除
	# sudo rm -rf /mnt/lvm-public/nextcloud/data
	# sudo rm -rf ./volumes/nextcloud
	sudo rm -rf ./volumes/postgres
	mkdir ./volumes/postgres

perform-a-factory-reset-%: ## 全削除 
	@CORRECT_PASSWORD=temp
	@$(eval RESET_PASSWORD := ${@:perform-a-factory-reset-%})

