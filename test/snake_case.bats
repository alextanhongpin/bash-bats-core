#!/usr/bin/env bats

load "snake_case.bash"

@test "is snake case" {
	run is_snake_case "hello-world"
	[ "$status" -eq 0 ]
}

@test "is not snake case" {
	run is_snake_case "hello World"
	[ "$status" -eq 1 ]
	[ "$output" = "not snake case" ]
}

@test "to snake case" {
	run to_snake_case "hello-world"
	[ "$output" = "hello_world" ]
}
