EDITOR=nvim
VISUAL=nvim
MANPAGER="bat -p -l man"

PATH=/opt/homebrew/bin:$HOME/.bin:$HOME/.bun/bin:$HOME/.config/scripts:$PATH

# Load all env files
ENV_DIR="$XDG_CONFIG_HOME/zsh/env"
for env_file in "$ENV_DIR"/*.env.sh; do
	[ -e "$env_file" ] && source "$env_file"
done

# Load all command files
COMMANDS_DIR="$XDG_CONFIG_HOME/zsh/commands"
for cmd_file in "$COMMANDS_DIR"/*.command.sh; do
  [ -e "$cmd_file" ] && source "$cmd_file"
done

# Load aliases
source "$XDG_CONFIG_HOME/zsh/aliases.sh"

eval "$(atuin init zsh)"
eval "$(starship init zsh)"
