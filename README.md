```
$ docker build -t rails-docker-sample .
$ docker run -it -d -w /app -v "$PWD:/app" -p 9292:9292 rails-docker-sample
```
