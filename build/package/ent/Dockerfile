FROM golang:1.17

WORKDIR /go/src

RUN go install entgo.io/ent/cmd/ent@latest

ENTRYPOINT [ "ent" ]