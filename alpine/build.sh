if [ -n "$(docker images -q php-alpine:8)" ]; then
    docker rmi php-alpine:8
fi

docker build . -t php-alpine:8 -f Dockerfile