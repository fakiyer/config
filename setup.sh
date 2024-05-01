#!/bin/bash

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

sh ~/dotfiles/brew.sh
sh ~/dotfiles/install.sh
sh ~/dotfiles/osx/keyrate.sh

ln -s ~/dotfiles/.vim ~/.config/nvim
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.git_template ~/.git_template
ln -sf ~/dotfiles/.gitignore_global ~/.gitignore_global
ln -sf ~/dotfiles/.ripgreprc ~/.ripgreprc
ln -s ~/dotfiles/VSCode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -s ~/dotfiles/VSCode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
ln -s ~/dotfiles/VSCode/snippets/ ~/Library/Application\ Support/Code/User/snippets

# sh ~/dotfiles/karabiner/import.sh
ln -sf ~/dotfiles/karabiner-elements/karabiner.json ~/.config/karabiner/karabiner.json
ln -sf ~/dotfiles/karabiner-elements/assets/complex_modifications/mouse.json ~/.config/karabiner/assets/complex_modifications/mouse.json

~/.tmux/plugins/tpm/bin/install_plugins
