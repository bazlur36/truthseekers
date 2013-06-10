foo:
	@echo "Usage"
	@echo "make load       [load current database]"
	@echo "make load-test  [load current database using test server credential]"
	@echo "make dump       [dump current database]"
	@echo "make revert-all-views [revert all view]"

dump:
	@echo "clearing cache ....."
	drush cc all
	@echo "taking dump to db.sql ....."
	drush sql-dump > db.sql
	@echo "Done"
load:
	./load.sh
load-test:
	./load.sh test
load-staging:
	./load.sh staging
revert-all-views:
	./views.sh
