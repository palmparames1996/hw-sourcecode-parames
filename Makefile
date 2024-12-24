local-start:
	 docker-compose up -d

local-build:
	docker-compose up -d --build

local-stop:
	docker-compose down

local-restart:
	make local-stop
	make local-start