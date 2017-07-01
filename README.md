# Presentation on Docker technology

## Docker container running reveal.js

This presentation was made using [reveal.js](https://github.com/hakimel/reveal.js/) hosted inside a docker container.
It supports the use of the following plugins:

* [reveal.js-menu](https://github.com/denehyg/reveal.js-menu) Adds a menu to
  test themes, transitions and jump to slides
* [Chalkbord](https://github.com/rajgoel/reveal.js-plugins/tree/master/chalkboard)
  Write on your slides or on a chalkboard


## To build the image

```
docker build -f Dockerfile -t reveal.js-docker:latest .
```

## To run the container

```
docker run -p 8000:8000 -p 35729:35729 reveal.js-docker
```
## To see the presentation

```
http://localhost:8000
```
