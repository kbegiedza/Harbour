ARG VERSION

FROM ursanon/dotnet:sdk-${VERSION}

RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && \
    apt install -y \
    nodejs