## Docker
```bash
# -d : run as background (detach mode)
# -p : map port , publish port : host:container (3000:80)
# --name for naming container
docker run -d -p 3000:80 --name nginx-cont nginx
docker ps # list all running container
```