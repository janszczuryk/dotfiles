# dotfiles

This repository contains personal configuration files.
Files from individual directories should be placed in corresponding places in user's home directory.

## Installation

Clone the repo:
```sh
git clone https://github.com/janszczuryk/dotfiles.git
cd dotfiles/
```

Vim:
```sh
ln -s "$(pwd)/vim/.vimrc" ~/.vimrc
mkdir -pv ~/.cache/vim
```

Oh My ZSH - **zsh**:
```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Aliases - **zsh**:
```sh
mkdir -pv "$ZSH_CUSTOM/plugins/my-aliases"
ln -s "$(pwd)/shell/.aliases" "$ZSH_CUSTOM/plugins/my-aliases/my-aliases.plugin.zsh"
# edit .zshrc and add `my-aliases` as plugin
source ~/.zshrc
```

Plugins - **zsh**:
```sh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

