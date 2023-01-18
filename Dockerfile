FROM alpine:latest
LABEL Name=shunt Version=0.0.2
COPY target/x86_64-unknown-linux-musl/release/shunt .
ENV RUST_LOG=debug
ENV RUST_BACKTRACE=1
EXPOSE 1883
CMD ["./shunt"]
