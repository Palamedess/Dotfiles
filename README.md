# Palamedes Dotfiles

Dotfiles repo for syncing across my computers.
Also so I can keep track of what I have installed.

## Info

### System

* **Desktop**\
Arch Linux through WSL on Windows
* **Laptop** (WIP)\
Arch Linux

Dotfiles are managed using [GNU Stow](https://www.gnu.org/software/stow/)

### Dependencies

* Alacritty
* Bat
* Glow (optional)
* GNU Stow
* Neovim
* Nerd Font (recommended)
* Starship
* Superfile
* Tmux
* Zsh

&nbsp;

## Installation

To install, run:

**NOTE:** Rename or delete .stow-local-ignore if you are not using WSL

``` sh
> cd $HOME
> git clone https://github.com/Palamedess/Dotfiles && cd Dotfiles
> stow .
```

&nbsp;

## Packages

Noteworthy packages installed and configured on my system
<!--toc:start-->
* [Terminal](#terminal)
* [Font](#font)
* [Colorscheme](#colorscheme)
* [Prettier-Terminal](#prettier-terminal)
* [Workflow](#workflow)
* [Misc](#misc)

&nbsp;

### Terminal

* [Alacritty](https://github.com/alacritty/alacritty)(Windows)

[//]: # (Kitty \(Linux\))

### Font

* [JetBrainsMono Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/JetBrainsMono)
  * Other [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts)

### Colorscheme

* [Neomodern](https://github.com/casedami/neomodern.nvim)\
*Using "roseprime" dark variant.*\
Relatively minimal compared to a lot of widely used themes.

### Prettier-Terminal

* [Bat](https://github.com/sharkdp/bat)\
Cat with colored output

* [Bat-extras](https://github.com/eth-p/bat-extras)\
Extra uses for bat

* [Lsd](https://github.com/lsd-rs/lsd)\
Ls with colored output

* [Starship](https://github.com/starship/starship)\
Shell prompt

* [Macchina](https://github.com/Macchina-CLI/macchina)\
Fetch to replace [Neofetch](https://github.com/dylanaraps/neofetch)

### Workflow

* [Neovim](https://github.com/neovim/neovim)\
Terminal text editor. See [Neovide](https://github.com/neovide/neovide)
for a GUI version with special features.

* [LazyVim](https://github.com/LazyVim/LazyVim)\
Neovim "distro" (config) for truly lazy people like me.

* [Tmux](https://github.com/tmux/tmux)\
Terminal Multiplexer.

* [TPM](https://github.com/tmux-plugins/tpm) (Tmux Plugin Manager)\
Plugin manager for Tmux

* [Superfile](https://github.com/yorukot/superfile)\
The most modern looking file manager that i've tried.
See also [lf](https://github.com/gokcehan/lf) and [vifm](https://github.com/vifm/vifm).
  * neovim-remote\
  Allows me to open a file into an existing neovim instance

### Misc

* [Glow](https://github.com/charmbracelet/glow)\
Markdown renderering in the terminal.

* [Paru](https://github.com/Morganamilo/paru)\
AUR Helper.

* [GNU Stow](https://www.gnu.org/software/stow/)\
Symlink manager

* [Trash-cli](https://github.com/andreafrancia/trash-cli)\
Move files to the "trash" instead of deleting them

* [Autotrash](https://github.com/bneijt/autotrash)\
Empties the trash once in a while

&nbsp;
