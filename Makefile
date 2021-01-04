up:
	docker-compose up -d

down:
	docker-compose down

build:
	docker-compose build

rebuild:
	docker-compose build --no-cache

run:
	docker-compose run --rm php74-service symfony serve

composer:
	docker-compose run --rm php74-service composer install

db:
	docker-compose run --rm php74-service php bin/console d:d:c

db_update:
	docker-compose run --rm php74-service php bin/console d:s:u --force

db_rebuild:
	docker-compose run --rm php74-service php bin/console d:d:d --force
	docker-compose run --rm php74-service php bin/console d:d:c
	docker-compose run --rm php74-service php bin/console d:s:u --force

yarn:
	docker-compose run --rm node-service yarn install

yarn_build:
	docker-compose run --rm node-service yarn build

yarn_run:
	docker-compose run --rm node-service yarn encore dev --watch
