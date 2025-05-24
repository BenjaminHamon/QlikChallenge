FROM golang:1.24

WORKDIR /usr/src/app

COPY . .

RUN make dependencies
RUN make build
RUN make test

CMD [ "make", "start" ]
