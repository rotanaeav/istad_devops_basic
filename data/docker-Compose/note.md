## NOTE FOR DOCKER COMPOSE 
original file name : 
    - compose.yaml | compose.yml
    - docker-compose.yaml | docker-compose.yml

### CMD : 
```bash
    - docker compose config 
    - docker compose config --services # view all services
    - docker compose up -d #create and start container (background mode ) all
    - docker compose down  #stop and remove container(container , network)
    - docker compose down -v # stop and remove all (included volume)
    - docker compose ps # show all container in compose
    - docker compose -f composeFieName up -d