name := zironycho/pytorch
tag_cpu := 190-cpu-py37
tag_gpu := 190-cu111-py37

default: build-cpu build-gpu

build-cpu:
	@docker build . -t ${name}:${tag_cpu} -f Dockerfile

build-gpu:
	@docker build . -t ${name}:${tag_gpu} -f Dockerfile.cu111

ls:
	@docker images ${name}

run:
	@docker run --rm -it ${name}:${tag_cpu} sh

h:
	@docker history ${name}:${tag_cpu}
	@docker history ${name}:${tag_gpu}

push:
	@docker push ${name}:${tag_cpu} ${name}:${tag_cpu}
