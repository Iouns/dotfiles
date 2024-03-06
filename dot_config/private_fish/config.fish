if status is-interactive
    # Env vars
    set -x AWS_REGION eu-west-3
    set -x LC_ALL en_US.UTF-8
    set -x LANG en_US.UTF-8
    set -x EDITOR nvim
    set -x FZF_DEFAULT_OPTS '--cycle --layout=reverse --border --height=90% --preview-window=wrap --marker="*"'

    # PATH
    fish_add_path $HOME/.krew/bin

    # Fancy commands
    alias curl='curlie'
    alias k='kubectl'
    alias f='fd'
    alias g='git'
    alias c='bat'

    set -x LS_COLORS (vivid generate catppuccin-macchiato)
    set -x --append FZF_DEFAULT_OPTS '--color=bg+:#363a4f,bg:#24273a,spinner:#f4dbd6,hl:#ed8796'
    set -x --append FZF_DEFAULT_OPTS '--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6'
    set -x --append FZF_DEFAULT_OPTS '--color=marker:#f4dbd6,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796'

    # Disable greeting
    set -g fish_greeting

    # Completions
    zoxide init fish | source
    starship init fish | source
    flux completion fish | source
    helm completion fish | source
    kubectl completion fish | source
    direnv hook fish | source
end
