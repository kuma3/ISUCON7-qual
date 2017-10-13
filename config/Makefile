.DEFAULT_GOAL := help
service_name = isu-ruby.service

restart: ## copy configs from repository to conf
	@make -s nginx-restart
	@make -s db-restart
	@make -s ruby-restart

ruby-log: ## log Server
	@sudo journalctl -u $(service_name)

ruby-restart: ## Restart Server
	@sudo systemctl daemon-reload
	@cd ~/private_isu/webapp/ruby; bundle 1> /dev/null
	@sudo systemctl restart $(service_name)
	@echo 'Restart $(service_name)'

nginx-restart: ## Restart nginx
	@sudo systemctl restart nginx
	@echo 'Restart nginx'

nginx-log: ## tail nginx access.log
	@sudo tail -f /var/log/nginx/access.log

nginx-error-log: ## tail nginx error.log
	@sudo tail -f /var/log/nginx/error.log

alp: ## Run alp
	@sudo alp -f /var/log/nginx/access.log

db-restart: ## Restart mysql
	@sudo systemctl restart mysql
	@echo 'Restart mysql'

db-log: ## tail mysql.log
	@sudo tail -f /var/log/mysql/mysql.log

service-status: ## Show status of service
	@sudo systemctl list-unit-files -t service

.PHONY: help

help:
	@grep -E '^[a-z0-9A-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
