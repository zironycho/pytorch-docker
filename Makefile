name := zironycho/pytorch
version := 0.3.1-slim

tags = ${version} latest

build:
	@docker build . $(foreach tag, ${tags}, -t ${name}:${tag})

ls:
	@docker images ${name}

push: $(tags)

$(tags): %:
	@docker push ${name}:$@

