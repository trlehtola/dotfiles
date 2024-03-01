# My dotfiles

This directory contains the dotfiles for my system

## Requirements

Ensure you have the following installed on your system

### Neovim

```
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
```

### Git

```
sudo apt install git
```

### Nala

```
sudo apt install nala
```

### Stow

```
sudo apt install stow
```

### TMUX

```
sudo apt install tmux
```

### Kitty

```
sudo apt install kitty
```

### Playerctl

```
sudo apt install playerctl
```

### Nitrogen

```
sudo apt install nitrogen
```

### I3

```
sudo apt install i3
```

## All apt packages in one

```
sudo apt install git nala stow tmux kitty playerctl nitrogen i3
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
$ git clone git@github.com:trlehtola/dotfiles.git
$ cd dotfiles
```

then use GNU stow to create symlinks

```
$ stow .
```
