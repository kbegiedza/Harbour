ARG VERSION
ARG OS

FROM rust:${VERSION}-${OS}

RUN apt update && \
    apt upgrade -y && \
    apt install -y ssh-client