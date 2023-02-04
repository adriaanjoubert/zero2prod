FROM docker.io/rust:1.59.0
WORKDIR /app
RUN apt-get update && apt-get install lld clang -y
COPY . .
RUN cargo build --release
ENV APP_ENVIRONMENT production
ENTRYPOINT ["./target/release/zero2prod"]
