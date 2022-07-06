name := zironycho/pytorch
tag_cpu := 1120-cpu-py38
platform := linux/amd64

default: build-cpu

build-cpu:
	@docker build . \
		-t ${name}:${tag_cpu}  \
		--platform=${platform} \
		-f Dockerfile

ls:
	@docker images ${name}

sh:
	@docker run --rm -it \
		--platform=${platform} \
		${name}:${tag_cpu} \
		sh

h:
	@docker history \
		${name}:${tag_cpu}

push:
	@docker push \
		${name}:${tag_cpu}
