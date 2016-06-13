docker rm -f `docker ps -aq --filter="name=visualizer"`
docker build -t izeidman/algorithm-visualizer .
docker run -d -p 8080:8080 --name visualizer izeidman/algorithm-visualizer