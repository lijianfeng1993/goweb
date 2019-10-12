FROM golang:1.12.9-alpine AS build-env
ADD . /go/src/goweb
WORKDIR /go/src/goweb
RUN GOOS=linux GOARCH=386 go build -v -o /go/src/goweb/goweb-server 


FROM alpine
COPY --from=build-env /go/src/goweb/goweb-server /usr/local/bin/goweb-server
EXPOSE 8080
CMD [ "goweb-server" ]
