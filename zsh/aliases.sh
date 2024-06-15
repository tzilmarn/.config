# Better tools
alias cat=bat
alias ls=lsd
alias rm=trash

# Shortcuts
alias cfg="nvim ~/.config"
alias cfgnvim="nvim ~/.config/nvim"
alias cfgkar="nvim ~/.config/karabiner/commands.json"
alias lg=lazygit
alias ld=lazydocker
alias brewdump="brew bundle --file $HOME/.config/homebrew/Brewfile dump --force"
alias brewload="brew bundle --file $HOME/.config/homebrew/Brewfile"
alias t="tmux a || tmux"

# SSH
alias tzilmini="ssh tzilmini.local"
alias tzilbook="ssh tzilbook.local"

# Config git
alias configyeet="cd ~/.config && git commit -am 'Yeet update' && git push && cd -"
