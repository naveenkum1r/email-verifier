FROM golang:alpine

WORKDIR /email-verifier

COPY . ./ 

RUN go build
RUN go build ./cmd/apiserver

EXPOSE 8080

CMD "./apiserver"
