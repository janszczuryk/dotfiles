# dotfiles

This repository contains personal configuration files.
Files from individual directories should be placed in corresponding places in user's home directory.

## Installation

Clone the repo:
```bash
git clone https://github.com/janszczuryk/dotfiles.git
cd dotfiles/
```

Vim:
```bash
ln -s "$(pwd)/vim/.vimrc" ~/.vimrc
mkdir -pv ~/.cache/vim
```

Aliases - **bash**:
```bash
ln -s "$(pwd)/shell/.aliases" ~/.bash_aliases
source ~/.bashrc
```

Aliases - **zsh**:
```bash
mkdir -pv "$ZSH_CUSTOM/plugins/my-aliases"
ln -s "$(pwd)/shell/.aliases" "$ZSH_CUSTOM/plugins/my-aliases/my-aliases.plugin.zsh"
# edit .zshrc and add `my-aliases` as plugin
source ~/.zshrc
```
