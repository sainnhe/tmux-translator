default_launch_key="t"
launch_key="@tmux-translator"
default_width="50%"
width="@tmux-translator-width"
default_height="50%"
height="@tmux-translator-height"

get_tmux_option() {
	local option="$1"
	local default_value="$2"
	local option_value=$(tmux show-option -gqv "$option")
	if [ -z "$option_value" ]; then
		echo "$default_value"
	else
		echo "$option_value"
	fi
}
