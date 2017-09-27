test

```
$ docker build -t rails-docker-sample .
$ docker run --rm -it -d -w /app -v "$PWD:/app" -p 9292:9292 -n rails-docker-sample rails-docker-sample
```

```
BUILD_TAG=2
$ docker build -t gcr.io/sakuraba-sample/zaru-sandbox/rails-docker-sample:1-${BUILD_TAG} .
$ gcloud docker -- push gcr.io/sakuraba-sample/zaru-sandbox/rails-docker-sample:1-${BUILD_TAG}
```
