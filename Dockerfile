FROM docker.io/library/golang:latest AS builder
WORKDIR /app
COPY . .
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 \
    go build -ldflags="-s -w" -o chat_gurudev .

FROM scratch
WORKDIR /app
COPY --from=builder /app/chat_gurudev /app/chat_gurudev
ENTRYPOINT ["/app/chat_gurudev"]

