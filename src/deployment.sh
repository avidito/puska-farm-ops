docker build -t puska-farm-ops .

docker stop puska-farm-ops
docker rm puska-farm-ops
docker run --name puska-farm-ops -p 5600:5432 --env-file .env -v puska-farm-ops-volume:/var/lib/postgresql --restart always -d puska-farm-ops