## docker build
```
sudo docker build -t scrapy-news ./images/scrapy
```

## ubuntu test
```
sudo docker run -dit --name my-scrapy env LANG=C.UTF-8 ubuntu:14.04
```
## exec -it 
```
docker exec -it my-scrapy env LANG=C.UTF-8 bash
```