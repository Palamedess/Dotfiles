# Palamedes Dotfiles

Dotfiles repo for syncing across my computers.
Also so I can keep track of what I have installed.

## Info

Dotfiles are managed using [GNU Stow](https://www.gnu.org/software/stow/)

### Dependencies

* Kitty
* Bat
* FZF
* GNU Stow
* Neovim
* Nerd Font (JetBrainsMono)
* Starship
* Superfile
* Tmux
* Zsh

&nbsp;

## Installation

To install, run:

``` sh
> cd $HOME
> git clone https://github.com/Palamedess/Dotfiles && cd Dotfiles
> stow .
```

&nbsp;

## Packages

Noteworthy packages installed and configured on my system
<!--toc:start-->
* [Desktop Environment](#desktop-environment)
* [Terminal](#terminal)
* [Fonts](#font)
* [Colorscheme](#colorscheme)
* [Prettier-Terminal](#prettier-terminal)
* [Workflow](#workflow)
* [Misc](#misc)

&nbsp;

### Desktop Environment

#### Core

* [Hyprland]()
Tiling window manager
* [Waybar]()
Bar
* [Swaync]()\
Notification daemon with a control center included
* [Swayosd]()
On screen display for things like volume change and brightness
* [Walker]()\
Application launcher
  [Elephant]()\
  Backend for Walker

#### Fonts

* [JetBrainsMono Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/JetBrainsMono)
  * Other [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts)

* Inter
  * Inter Nerd Font

* Noto
  * Noto Emoji
  * Noto CJK

#### Applications

* [Kitty](https://github.com/kovidgoyal/kitty)\
GPU accelerated terminal

* [Zen Browser]()\
Aesthetically pleasing browser based on firefox

* [Nautilus]()\
GUI file browser

#### Themeing

* [Neomodern](https://github.com/casedami/neomodern.nvim)\
*Using "Moon" dark variant.*\
Relatively minimal compared to a lot of widely used themes.

* [Gowall](https://github.com/Achno/gowall)\
Utility for changing wallpaper colors to match colorscheme

* [Colloid icon theme]()\
Icon theme

* [Adwaita]()\
Default gtk4 theme
  * [Adwaita gtk3]()\
  Port of gtk4 adwaita to gtk3

* [Breeze]()\
QT theme

### Prettier-Terminal

* [Bat](https://github.com/sharkdp/bat)\
Cat with colored output
  * [Bat-extras](https://github.com/eth-p/bat-extras)\
  Extra uses for bat

* [Lsd](https://github.com/lsd-rs/lsd)\
Ls with colored output

* [Glow](https://github.com/charmbracelet/glow)\
Markdown rendering in the terminal.

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

* [Fzf](https://github.com/junegunn/fzf)\
Tool for fuzzy finding in the terminal

* [Zoxide]()\
Better cd

* [Superfile](https://github.com/yorukot/superfile)\
The most modern looking file manager that I've tried.
See also [lf](https://github.com/gokcehan/lf) and [vifm](https://github.com/vifm/vifm).
  * neovim-remote\
  Allows me to open a file into an existing neovim instance

### Misc

* [Paru](https://github.com/Morganamilo/paru)\
AUR Helper.

* [GNU Stow](https://www.gnu.org/software/stow/)\
Symlink manager

* [Xdg-ninja]()\
Helps to clean up home directory

* [Trash-cli](https://github.com/andreafrancia/trash-cli)\
Move files to the "trash" instead of deleting them

* [Autotrash](https://github.com/bneijt/autotrash)\
Empties the trash once in a while

&nbsp;
