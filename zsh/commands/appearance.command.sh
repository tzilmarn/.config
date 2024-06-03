THEME_SYMLINK=~/.config/alacritty/theme-symlink.toml
DARK_THEME=~/.config/alacritty/themes/themes/catppuccin_mocha.toml
LIGHT_THEME=~/.config/alacritty/themes/themes/catppuccin_latte.toml

alias dark="ln -fs \"$DARK_THEME\" \"$THEME_SYMLINK\""
alias light="ln -fs \"$LIGHT_THEME\" \"$THEME_SYMLINK\""
