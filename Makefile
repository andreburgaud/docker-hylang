TAG:=${IMAGE_TAG}
IMAGE:=andreburgaud/hylang

default: help

help:
ifndef TAG
	@echo 'Hylang <UNDEFINED_TAG> Docker image build file'
	@echo 'Note: Set environment variable IMAGE_TAG before building the image'
else
	@echo 'Hylang ${TAG} Docker image build file'
endif
	@echo
	@echo 'Usage:'
	@echo '    make clean           Delete dangling and Hylang images'
	@echo '    make build           Build the Hylang image using local Dockerfile'
	@echo '    make github'
	@echo '      - Push code and tag to GitHub (commit manually first)'
	@echo '      - Trigger automated DockerHub build'
	@echo

validate:
ifndef TAG
	@echo 'Set environment variable to the Hy tag'
	@echo 'Example: export IMAGE_TAG=0.17.0'
	@false
else
	@echo 'IMAGE_TAG=${TAG}'
endif

build: validate
	docker build -t ${IMAGE}:${TAG} .

clean: validate
	# Remove containers with exited status:
	docker rm `docker ps -a -f status=exited -q` || true
	docker rmi ${IMAGE}:latest || true
	docker rmi ${IMAGE}:${TAG} || true
	# Delete dangling images
	docker rmi `docker images -f dangling=true -q` || true

github: validate
	git push
	git tag -a ${TAG} -m 'Version ${TAG}'
	git push origin --tags

.PHONY: help validate build clean github
