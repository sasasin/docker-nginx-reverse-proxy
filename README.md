# docker-nginx-reverse-proxy

reverse proxy by nginx.

# running container

```
docker build . -t docker-nginx-reverse-proxy:latest
```

or

```
docker pull sasasin/docker-nginx-reverse-proxy:latest
```

and run

```
docker run -e PROXY_PASS=https://www.google.co.jp -p 8080:80 --rm -it docker-nginx-reverse-proxy
```

open browser: http://localhost:8080

## use case

* reverse proxy for Kibana on AWS Elasticsearch Service on AWS VPC private subnet
