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
alias c='codium'
alias vim='nvim'
alias k='kubectl'
alias g='rg'
alias dig='dog'
alias host='dog'
alias top='glances'
#alias ll='exa -l'
#alias ls='exa'
#alias la='exa -lra --time modified'
alias f='fd'
alias cat='bat'

# Useful aliases
alias awslogin='saml2aws login --force && eval (saml2aws script)'

# Nord theme
test -r .dircolors/dircolors && eval (dircolors -c ~/.dircolors/dircolors)
set -x BAT_THEME Nord
set -x --append FZF_DEFAULT_OPTS '--color=fg:#e5e9f0,bg:#3b4252,hl:#81a1c1 --color=fg+:#e5e9f0,bg+:#3b4252,hl+:#81a1c1'
set -x --append FZF_DEFAULT_OPTS '--color=info:#eacb8a,prompt:#bf6069,pointer:#b48dac'
set -x --append FZF_DEFAULT_OPTS '--color=marker:#a3be8b,spinner:#b48dac,header:#a3be8b'

# Completions
flux completion fish | source
zoxide init fish | source
starship init fish | source
yq shell-completion fish | source
helm completion fish | source

