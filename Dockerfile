FROM golang:1.15.1 as builder
COPY . /app
WORKDIR /app
RUN make build

FROM scratch
COPY --from=builder /app/stress /stress
ENTRYPOINT ["/stress", "-logtostderr"]
