## Docker
```bash
# -d : run as background (detach mode)
# -p : map port , publish port : host:container (3000:80)
# --name for naming container
docker run -d -p 3000:80 --name nginx-cont nginx
docker run -d -p 3001:3000 --name react-cont react-demo:latest
# list all running container
docker ps 
docker container ls
# List All Container : 
docker ps -a
# List All Image :
docker images
docker image ls
# Same like image as : volume , network , container, image,...
docker volume ls

# Dockerfile 
# need to run inside the folder which has dockerfile
docker build -t imageName .
# for other Dockerfile name
docker build -t prod-react -f prod.Dockerfile .     

```