FROM golang

RUN go get github.com/nnuma/ldap-passwd-ui
WORKDIR $GOPATH/src/github.com/nnuma/ldap-passwd-ui

EXPOSE 5050
RUN go build -o app
CMD [ "./app" ]
