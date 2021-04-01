OS="buster-slim"
VERSION="5.0"
REPO="ursanon/dotnet"

# SDK
SDK_TAG="sdk-$VERSION-$OS"

docker build -f sdk.Dockerfile -t $REPO:$SDK_TAG --build-arg OS=${OS} --build-arg VERSION=${VERSION} . &&
docker push $REPO:$SDK_TAG