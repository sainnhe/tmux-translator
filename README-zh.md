![](https://gitlab.com/sainnhe/img/-/raw/master/translator.png)

# 安装

## 依赖

- 最新的 tmux master 分支 [tmux/tmux](https://github.com/tmux/tmux)，Arch 用户可以安装 [tmux-git](https://aur.archlinux.org/packages/tmux-git/)
- [skywind3000/translator#requirements](https://github.com/skywind3000/translator#requirements)

## 通过 [TPM](https://github.com/tmux-plugins/tpm/) 安装

把这一行添加到 `~/.tmux.conf`

```tmux
set -g @plugin 'sainnhe/tmux-translator'
```

重新加载配置，然后按 `prefix` + `I`

# 使用方法

进入 Copy Mode 选中一些文本，然后按 `t` 即可翻译，按回车退出翻译窗口。

这个插件提供了 3 个选项：

```tmux
# 触发划词翻译的键
set -g @tmux-translator "t"

# 浮动窗口宽度
set -g @tmux-translator-width "38%"

# 浮动窗口高度
set -g @tmux-translator-height "38%"
```

# 更多插件

- [sainnhe/tmux-fzf](https://github.com/sainnhe/tmux-fzf): 用 FZF 管理 tmux sessions, windows, panes 等等。

# 许可

`/engine` 目录下的代码参考 [skywind3000/translator](https://github.com/skywind3000/translator)

其余部分的代码以 [MIT](./LICENSE) 许可分发。

