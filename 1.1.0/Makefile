name := zironycho/pytorch
version := 1.1.0-slim

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

