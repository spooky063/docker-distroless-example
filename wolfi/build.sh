if [ -n "$(docker images -q php-wolfi:8)" ]; then
    docker rmi php-wolfi:8
fi

docker build . -t php-wolfi:8 -f Dockerfile