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

tmux popup -xC -yC -w$(get_width) -h$(get_height) -KE -R "python ~/repo/translator/translator.py $(tmux save-buffer -); read -r"
