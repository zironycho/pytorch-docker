name := zironycho/pytorch
tag_cpu := 160-cpu-py37
tag_gpu := 160-cu102-py37

default: build-cpu build-gpu

build-cpu:
	@docker build . -t ${name}:${tag_cpu} -f Dockerfile

build-gpu:
	@docker build . -t ${name}:${tag_gpu} -f Dockerfile.cu102

ls:
	@docker images ${name}

run:
	@docker run --rm -it ${name}:${tag_cpu} sh

h:
	@docker history ${name}:${tag_cpu}
	@docker history ${name}:${tag_gpu}

push:
	@docker push ${name}:${tag_cpu} ${name}:${tag_cpu}
