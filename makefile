run:
	docker-compose up 

console:
	docker-compose up -d && docker-compose exec app bundle install && docker-compose exec app rails c

sidekiq:
	docker-compose up -d && docker-compose exec app bundle install && docker-compose logs -f sidekiq

migrate:
	docker-compose run --rm website bundle exec rails generate devise:install
	
create:
	docker-compose up -d && docker-compose exec app bundle install && docker-compose exec app rails db:create