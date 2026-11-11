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

    - docker exec -it containerName /bin/bash or sh ,... # to log in into container
    # find container inside network : 
    - docker network inspect fullstack_fullstack-net
    # or use jq for better : # It's not yet working, Ill try later 
    - docker network inspect fullstack_fullstack-net | jq -r '[0].Containers
```

    ```bash
    # for external = true meaning :  that 

    - external =true

    # if we want to use hostNetwork :
    docker 
    
    ```