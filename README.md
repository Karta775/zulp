# zulp
Dead simple zsh plugin manager
![zulp recording](https://raw.githubusercontent.com/Karta775/zulp/main/recording.gif)

The next time you start a new terminal session your plugins will be installed and ready to use.
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

