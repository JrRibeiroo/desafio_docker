FROM golang:1.16 as builder

WORKDIR /go/src/app

COPY code_education.go .

RUN go build code_education.go 

FROM scratch

WORKDIR /go/src/app

COPY --from=builder /go/src/app .

ENTRYPOINT [ "./code_education" ]