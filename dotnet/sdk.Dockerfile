ARG VERSION

FROM mcr.microsoft.com/vscode/devcontainers/dotnet:${VERSION}

RUN apt update && \
    apt upgrade -y && \
    apt install -y ssh-client