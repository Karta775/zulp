# zulp - dead simple zsh plugin manager

![zulp recording](https://raw.githubusercontent.com/Karta775/zulp/main/recording.gif)

## Installation
```shell
git clone https://github.com/Karta775/zulp.git ~/.zulp
echo 'source ~/.zulp/init.zsh' >> ~/.zshrc
```

## Usage
The following is an excerpt from a .zshrc file using zulp:
```shell
source ~/.zulp/init.zsh
zulp 'zsh-users/zsh-autosuggestions'
zulp 'jeffreytse/zsh-vi-mode'
```
When you add a new `zulp ...` line to your zshrc, the next time zsh starts it will clone the plugin repository and install the plugin. And that's literally it, now you just enjoy your plugins.

