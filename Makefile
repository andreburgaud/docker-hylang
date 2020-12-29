TAG:=0.19.0
IMAGE:=andreburgaud/hylang

default: help

build:
	docker build -t ${IMAGE}:${TAG} .

clean:
	# Remove containers with exited status:
	docker rm `docker ps -a -f status=exited -q` || true
	docker rmi ${IMAGE}:latest || true
	docker rmi ${IMAGE}:${TAG} || true
	# Delete dangling images
	docker rmi `docker images -f dangling=true -q` || true

help:
	@echo 'Hylang ${TAG} Docker image build file'
	@echo
	@echo 'Usage:'
	@echo '    make build           Build the Hylang image using local Dockerfile'
	@echo '    make clean           Delete dangling and Hylang images'
	@echo '    make help            Display this help'
	@echo '    make tag'
	@echo '      - Push code and tag to GitHub (commit manually first)'
	@echo '      - Trigger automated DockerHub build'
	@echo

tag:
	git push
	git tag -a ${TAG} -m 'Version ${TAG}'
	git push origin --tags

.PHONY: help build clean tag
