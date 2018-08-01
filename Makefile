build:
	@make -C 0.3.1 build
	@make -C 0.4.0 build
	@make -C 0.4.1 build

ls:
	@make -C 0.4.1 ls

push:
	@make -C 0.3.1 push
	@make -C 0.4.0 push
	@make -C 0.4.1 push

