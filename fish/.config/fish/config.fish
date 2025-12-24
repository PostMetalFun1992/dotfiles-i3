set -gx SSH_AUTH_SOCK "$XDG_RUNTIME_DIR/ssh-agent.socket"
set -gx EDITOR helix
set -gx VISUAL helix

if not status is-interactive
    return
end

set -g fish_greeting

starship init fish | source

alias ls="eza --icons --group-directories-first"
alias ll="eza --icons -l --group-directories-first"
alias la="eza --icons -la --group-directories-first"
alias tree="eza --icons --tree"

alias cat="bat"

alias top="btop"

alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gl="git log"

alias k="kubectl"
alias hx="helix"

alias z="zellij"
alias zls="zellij list-sessions"
alias zks="zellij kill-session"
alias zds="zellij delete-session"
alias za="zellij attach"

alias i3conf="nvim ~/.config/i3/config"
