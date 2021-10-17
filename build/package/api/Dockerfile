FROM golang:1.17 AS build
WORKDIR /go/src

COPY go.mod go.sum ./
COPY internal/api/go.mod ./internal/api/
RUN go mod download

RUN ln -sf cmd/api/main.go
COPY . ./.

ENV CGO_ENABLED=0
RUN go build -a -installsuffix cgo -tags timetzdata -o openapi .

FROM scratch AS runtime
COPY --from=build /go/src/openapi ./
EXPOSE 8080/tcp
ENTRYPOINT ["./openapi"]
