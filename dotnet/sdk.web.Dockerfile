ARG OS
ARG VERSION

FROM ursanon/dotnet:sdk-${VERSION}-${OS}

RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && \
    apt install -y \
    nodejs

RUN npm install --global yarn