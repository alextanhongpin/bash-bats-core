#!/usr/bin/env bats

load "greet.bash"

@test "greeting" {
	run hello_world
	[ "$output" = "hello world" ]
}
