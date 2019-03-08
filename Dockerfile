FROM golang:1.8

RUN mkdir /go/src/cloudnative
RUN chdir /go/src/cloudnative
WORKDIR /go/src/cloudnative
COPY . .
COPY ./api ./api

RUN go get -d -v ./...
RUN go install -v ./...

CMD ["cloudnative"]

