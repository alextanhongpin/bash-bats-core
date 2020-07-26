.PHONY: test
test:
	@docker run -it -v "${PWD}:/code" bats/bats:1.2.1 --formatter tap test

haha:
	./test/snake_case.bash "hello-world"
