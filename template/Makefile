.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

init: ## 初期設定を行う。初起動時以外に使用しない。volume directory, env file を追加する。
	./shells/init.sh

start: ## template 立ち上げ
	./shells/container-control.sh start

down: ## template 終了
	./shells/container-control.sh down

restart: ## template 再起動
	./shells/container-control.sh restart

perform-a-factory-reset-%: ## 全削除 
	@CORRECT_PASSWORD=password
	@$(eval RESET_PASSWORD := ${@:perform-a-factory-reset-%}) 
