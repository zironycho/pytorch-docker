name := zironycho/pytorch
version := 0.4.0-slim

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

