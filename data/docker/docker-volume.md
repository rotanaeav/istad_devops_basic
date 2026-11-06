# Docker Volume :
a. Docker Volume : 
- use one docker obj  (volume)
b. Bind Mount : normal file backup from container 

```bash
#Create Volume
docker volume create my-vol
# Inspect Image : 
docker image inspect postgres
#example with postgres (using docker volume)
#postgres:latest (18,17)
docker volume create postgres-vol
docker run -d -p 5432:5432 \
    --name postgres-cont  \
    -e POSTGRES_PASSWORD=123 \
    -v postgres-vol:/var/lib/postgresql \
    postgres


    # Bind-Mount example for backup : 
mkdir image-storage
docker run -dp 8080:8080 -v ./image-storage:/app/file-storage/images --name spring-cont spring-fileupload

```

Docker Object : 
Each Container has : 
 a. container
 b. volume
 c. network 
 d. also has other like : env , ....