default_launch_key="t"
launch_key="@tmux-translator"

default_width="38%"
width="@tmux-translator-width"

default_height="38%"
height="@tmux-translator-height"

default_from="en"
from="@tmux-translator-from"

default_to="zh"
to="@tmux-translator-to"

default_engine="google"
engine="@tmux-translator-engine"

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
