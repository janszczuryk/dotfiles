# dotfiles

This repository contains personal configuration files.
Files from individual directories should be placed in corresponding places in user's home directory.

## Installation

```bash
git clone https://github.com/janszczuryk/dotfiles.git
cd dotfiles/
ln -s ./vim/.vimrc ~/.vimrc
ln -s ./bash/.bash_aliases ~/.bash_aliases
```

```bash
# Refresh bash to make aliases work
source ~/.bashrc
```

