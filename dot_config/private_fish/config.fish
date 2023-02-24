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

    # Nord theme
    test -r .dircolors/dircolors && eval (dircolors -c ~/.dircolors/dircolors)
    set -x BAT_THEME Nord
    set -x --append FZF_DEFAULT_OPTS '--color=fg:#e5e9f0,bg:#3b4252,hl:#81a1c1 --color=fg+:#e5e9f0,bg+:#3b4252,hl+:#81a1c1'
    set -x --append FZF_DEFAULT_OPTS '--color=info:#eacb8a,prompt:#bf6069,pointer:#b48dac'
    set -x --append FZF_DEFAULT_OPTS '--color=marker:#a3be8b,spinner:#b48dac,header:#a3be8b'

    # Completions
    zoxide init fish | source
    starship init fish | source
    flux completion fish | source
    helm completion fish | source
    kubectl completion fish | source
    talosctl completion fish | source
end
