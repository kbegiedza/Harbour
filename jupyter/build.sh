VERSION=$1
SUFFIX="gpu"
REPO="jupyter-pytorch"
NAME="ursanon/$REPO:$VERSION-$SUFFIX"

docker build -f pytorch.dockerfile -t $NAME . && \
docker push $NAME
