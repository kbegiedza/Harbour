ARG OS
ARG VERSION

FROM mcr.microsoft.com/dotnet/sdk:${VERSION}-${OS}

RUN apt update && \
    apt upgrade -y && \
    apt install -y ssh-client