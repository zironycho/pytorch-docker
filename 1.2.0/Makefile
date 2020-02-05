name := zironycho/pytorch
version := 1.2.0-slim-v2

tags = ${version}

default: build

build:
	@docker build . $(foreach tag, ${tags}, -t ${name}:${tag})

ls:
	@docker images ${name}

run:
	@docker run --rm -it ${name}:${version} sh

history:
	@docker history ${name}:${version}

push: $(tags)

$(tags): %:
	@docker push ${name}:$@

