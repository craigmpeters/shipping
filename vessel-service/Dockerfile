# vessel-service/Dockerfile
FROM alpine:latest

RUN apk --no-cache add ca-certificates

RUN mkdir -p /app
WORKDIR /app

ADD bin/vessel-service /app/vessel-service

CMD ["./vessel-service"]