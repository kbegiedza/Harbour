# OS="buster-slim"
VERSION="5.0"
REPO="ursanon/dotnet"

# SDK
SDK_TAG="sdk-$VERSION"

docker build -f sdk.Dockerfile -t $REPO:$SDK_TAG --build-arg VERSION=${VERSION} . &&
docker push $REPO:$SDK_TAG

# SDK Web
SDK_TAG="sdk-web-$VERSION"

docker build -f sdk.web.Dockerfile -t $REPO:$SDK_TAG --build-arg VERSION=${VERSION} . &&
docker push $REPO:$SDK_TAG