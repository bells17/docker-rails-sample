# README

This is a sample rails app with docker compose.

## Getting Started

```
docker-compose build
docker-compose run --rm web bundle exec rake db:create
docker-compose run --rm web bundle exec rake db:migrate
docker-compose up
```

## Connect DB from host

```
docker-compose up -d
mysql -h 0.0.0.0 -uroot -p
redis-cli -h 0.0.0.0
```
