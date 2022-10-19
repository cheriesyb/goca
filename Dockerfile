FROM golang:alpine

RUN apk add gcc git musl-dev && go install -v github.com/gocaio/goca@latest

WORKDIR /go/src/github.com/gocaio/goca

ENV GO111MODULE on
RUN go install ./...

ENTRYPOINT ["go","run","goca/goca.go"]
