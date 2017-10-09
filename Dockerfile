FROM golang:latest
RUN  export GOPATH=/go && export GOBIN=$GOPATH/bin
ADD hello-world.go src/github.com/golang/hello-world/hello-world.go
RUN go install  github.com/golang/hello-world
ENTRYPOINT /go/bin/hello-world
