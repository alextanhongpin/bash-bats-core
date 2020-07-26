#!/bin/bash

function is_snake_case() {
	if ! [[ $1 =~ ^[a-z][a-z-]+[a-z]$  ]]; then
		echo 'not snake case' && exit 1
	fi
}

function to_snake_case() {
	echo $1 | sed s/-/_/g
}
