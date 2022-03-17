SOURCE=Dockerfile
IMAGE=paperist/alpine-texlive-ja:2020

# build container image


# create new container and login to the shell
.PHONY: build
build:
	docker container run -it --rm\
		-v ${PWD}:/workdir \
		-w /workdir \
		${IMAGE} \
		sh run.sh

# create new container and execute hello.py
.PHONY: hello
hello:
	docker container run -it --rm \
		-v ${PWD}/workdir:/workdir \
		-w /workdir \
		${IMAGE} \
		bash -c "python3 hello.py"

# clean up all stopped containers
.PHONY: clean
clean:
	docker container prune
