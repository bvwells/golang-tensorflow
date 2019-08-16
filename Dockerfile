FROM golang:1.12.7

RUN curl -fsSL https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-cpu-linux-x86_64-1.14.0.tar.gz -o libtensorflow.tar.gz && \
    tar -C /usr/local -xzf libtensorflow.tar.gz && /
    rm -Rf libtensorflow.tar.gz

RUN ldconfig

ENV LIBRARY_PATH $LIBRARY_PATH:~/usr/local/lib
ENV LD_LIBRARY_PATH $LD_LIBRARY_PATH:~/usr/local/lib

RUN go get github.com/tensorflow/tensorflow/tensorflow/go

RUN go test github.com/tensorflow/tensorflow/tensorflow/go
