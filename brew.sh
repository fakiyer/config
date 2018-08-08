#!/bin/bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install Zsh
# Note: don’t forget to add `/usr/local/bin/zsh` to `/etc/shells` before
# running `chsh`.
brew install --without-etcdir zsh

# Switch to using brew-installed zsh as default shell
if ! fgrep -q '/usr/local/bin/zsh' /etc/shells; then
  echo '/usr/local/bin/zsh' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/zsh;
fi;

# Install more recent versions of some macOS tools.
brew install vim
brew install neovim/neovim/neovim
brew install python@2
brew install python
pip2 install neovim
pip3 install neovim
ln -s ~/.vim ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim

# Install Fzf
brew install fzf
/usr/local/opt/fzf/install

# Install other useful binaries.
brew install diff-so-fancy
brew install ghq
brew install git
brew install git-lfs
brew install git-secrets
brew install hub
brew install reattach-to-user-namespace
brew install tmux
brew install tree
# brew install pt
brew install ripgrep
brew tap universal-ctags/universal-ctags
brew install --HEAD universal-ctags
pip install pip-review
brew tap moncho/dry
brew install dry
brew install jq
brew install rlwrap

# Remove outdated versions from the cellar.
brew cleanup
