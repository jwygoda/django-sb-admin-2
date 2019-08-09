requirements:
	docker-compose run --rm web pip-compile --generate-hashes $(OPTIONS) requirements/development.in --output-file requirements/development.txt
	docker-compose run --rm web pip-compile --generate-hashes $(OPTIONS) requirements/production.in --output-file requirements/production.txt
	docker-compose run --rm web pip-compile --generate-hashes $(OPTIONS) requirements/heroku.in --output-file requirements/heroku.txt

.PHONY: requirements
