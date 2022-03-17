SOURCE=report
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


# clean up
.PHONY: clean
clean:
	rm -rf ./*aux ./*dvi
