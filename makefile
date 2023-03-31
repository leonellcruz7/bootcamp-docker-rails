build:
		docker compose build

setup:
  	docker compose run --rm app bin/rails db:setup

up:
	docker compose up

stop:
	docker compose stop

restart_db:
  docker compose run --rm app bin/rails db:drop
  docker compose run --rm app bin/rails db:create
  docker compose run --rm app bin/rails db:migrate
  docker compose run --rm app bin/rails db:seed

migrate:
  docker compose exec app bin/rails db:migrate

rollback:
  docker compose exec app bin/rails db:rollback

seed:
  docker compose exec app bin/rails db:seed

console:
	docker compose exec app bin/rails c

routes:
	docker compose exec app bin/rails routes

rails:
  docker compose exe app bin/rails $(cmd)