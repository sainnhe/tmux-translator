[English](./README.md) | [中文](./README-zh.md)

![](https://gitlab.com/sainnhe/img/-/raw/master/translator.png)

# Installation

## Requirements

- The newest development version of [tmux/tmux](https://github.com/tmux/tmux). For Arch Linux users, there is a package available in AUR: [tmux-git](https://aur.archlinux.org/packages/tmux-git/)
- [skywind3000/translator#requirements](https://github.com/skywind3000/translator#requirements)

## Install via [TPM](https://github.com/tmux-plugins/tpm/)

Add this line to your `~/.tmux.conf`:

```tmux
set -g @plugin 'sainnhe/tmux-translator'
```

Reload the configuration and press `prefix` + `I`

# Usage

Enter Copy Mode and select some text, then press `t` to translate it.

To close the popup window, press Enter or Ctrl-C.

To customize this plugin:

```tmux
# the key to trigger translation
set -g @tmux-translator "t"

# the width of popup window
set -g @tmux-translator-width "38%"

# the height of popup window
set -g @tmux-translator-height "38%"

# translate from
set -g @tmux-translator-from "en"

# translate to
set -g @tmux-translator-to "zh"

# engine
set -g @tmux-translator-engine "google"
# multiple engines
set -g @tmux-translator-engine "google|ciba|youdao"
```

See [skywind3000/translator#engines](https://github.com/skywind3000/translator#engines) for all available engines.

# More plugins

- [sainnhe/tmux-fzf](https://github.com/sainnhe/tmux-fzf): Manage tmux sessions, windows, panes, etc. using fzf.

# License

For the code in the `/engine` directory, see [skywind3000/translator](https://github.com/skywind3000/translator).

Other code is distributed under [MIT](./LICENSE) license.

