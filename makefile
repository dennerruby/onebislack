run:
	docker-compose up -d && docker attach 99hunters_app_1

console:
	docker-compose up -d && docker-compose exec app bundle install && docker-compose exec app rails c

sidekiq:
	docker-compose up -d && docker-compose exec app bundle install && docker-compose logs -f sidekiq

migrate:
	docker-compose up -d && docker-compose exec app bundle install && docker-compose exec app rails db:migrate

create:
	docker-compose up -d && docker-compose exec app bundle install && docker-compose exec app rails db:create