FROM debian:latest

WORKDIR /app
COPY . .

RUN chmod +x ./scripts/install_dependency.sh
RUN ./scripts/install_dependency.sh

RUN ollama pull llama3.2:latest
RUN go mod download
RUN go build -o ./chat_gurudev -ldflags="-s -w" ./main.go

EXPOSE 8080

CMD ["./chat_gurudev"]
