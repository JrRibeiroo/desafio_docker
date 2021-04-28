FROM scratch

WORKDIR /go/src/app
COPY code_education .

ENTRYPOINT [ "./code_education" ]