# local-jekyll-github-pages
A simple template for local Github Pages site with Jekyll

## Quick Start

1. build image

```
docker build -t "local-jekyll-github-pages" .
```

2. run container

```
docker run -d -p 4000:4000 -v $PWD/blog:/data/blog local-jekyll-github-pages:latest
```

3. visit:  [127.0.0.1:4000](http://127.0.0.1:4000/)

## Version Info

Build from docker image `ruby:3.3.4-alpine3.20`

```
ruby 3.3.4
jekyll 3.10.0
github-pages 232
```
