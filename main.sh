#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$CURRENT_DIR/settings.sh"

get_width() {
	local key_bindings=$(get_tmux_option "$width" "$default_width")
	local key
	for key in $key_bindings; do
		local value=$key
	done
	echo "$value"
}

get_height() {
	local key_bindings=$(get_tmux_option "$height" "$default_height")
	local key
	for key in $key_bindings; do
		local value=$key
	done
	echo "$value"
}

get_from() {
	local key_bindings=$(get_tmux_option "$from" "$default_from")
	local key
	for key in $key_bindings; do
		local value=$key
	done
	echo "$value"
}

get_to() {
	local key_bindings=$(get_tmux_option "$to" "$default_to")
	local key
	for key in $key_bindings; do
		local value=$key
	done
	echo "$value"
}

get_engine() {
	local key_bindings=$(get_tmux_option "$engine" "$default_engine")
	local key
	for key in $key_bindings; do
		local value=$key
	done
	echo "$value"
}

vars=$(echo "$(get_engine)" | sed "s/|/\n/g")
while IFS= read -r line; do
    result="${result}echo ---$line---; tmux save-buffer - | xargs -i python $CURRENT_DIR/engine/translator.py --engine=$line --from=$(get_from) --to=$(get_to) {}; echo ''; "
done <<< "$vars"
result="${result}read -r"

tmux popup -xC -yC -w$(get_width) -h$(get_height) -KE -R "$result"
