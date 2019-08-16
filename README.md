# golang-tensorflow

[![Build Status](https://travis-ci.org/bvwells/golang-tensorflow.svg?branch=master)](https://travis-ci.org/bvwells/golang-tensorflow)

A golang tensorflow build image.

For more information on TensorFlow see:
https://www.tensorflow.org/

For more information on building using TensorFlow in go see:
https://www.tensorflow.org/install/lang_go

For more information on using the c TensorFlow library in go see:
https://www.tensorflow.org/install/lang_c


# Building the docker image

```
docker build -t golang-tensorflow .
```

# Running test program

```
docker run -v cwd:/go/src/github.com/bvwells/golang-tensorflow golang-tensorflow:latest go run main.go
```

