FROM golang:1.8
WORKDIR /
COPY READ_THIS_IF_YOU_SEE_THIS_FROM_A_WEB_BROWSER.txt .
WORKDIR /go/src/app
COPY . .
RUN go get -d -v ./...
RUN go install -v ./...
CMD ["go", "run", "http1.go"]
