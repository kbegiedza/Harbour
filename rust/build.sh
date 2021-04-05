REPO="ursanon/rust"
VERSION="1.51.0"
OS="slim-buster"
# SDK
SDK_TAG="sdk-${VERSION}-${OS}"

docker build -f sdk.Dockerfile -t $REPO:$SDK_TAG --build-arg OS=${OS} --build-arg VERSION=${VERSION} . &&
docker push $REPO:$SDK_TAG