SOLRDATA_DIR := .solrdata

all: up

$(SOLRDATA_DIR):
	mkdir $(SOLRDATA_DIR)
	sudo chown -R 8983:8983 $(SOLRDATA_DIR)

up: $(SOLRDATA_DIR)
	docker compose up -d
	sleep 5
	docker compose exec solr find /initdb.d -iname "*" -exec {} \;

down:
	docker compose down

delete:
	docker compose down
	sudo rm -rf $(SOLRDATA_DIR)/*


.PHONY = all up down delete
