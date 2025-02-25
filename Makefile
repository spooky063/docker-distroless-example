.PHONY: build-alpine build-wolfi alpine wolfi trivy-alpine trivy-wolfi

build-alpine:
	cd alpine && ./build.sh

build-wolfi:
	cd wolfi && ./build.sh

alpine:
	docker run --rm php-alpine:8 php --version
	docker run --rm php-alpine:8 php -r 'echo "Hello World\n";'

wolfi:
	docker run --rm php-wolfi:8 php --version
	docker run --rm php-wolfi:8 php -r 'echo "Hello World\n";'

trivy-alpine:
	docker run --rm -v /var/run/docker.sock:/var/run/docker.sock aquasec/trivy:0.59.1 image -q php-alpine:8

trivy-wolfi:
	docker run --rm -v /var/run/docker.sock:/var/run/docker.sock aquasec/trivy:0.59.1 image -q php-wolfi:8