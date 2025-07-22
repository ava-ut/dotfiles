if status is-interactive
    # Commands to run in interactive sessions can go here
end

# oh-my-posh theme
oh-my-posh init fish --config ~/.poshthemes/hul10.omp.json | source

# zoxide + fzf
zoxide init fish | source
set -gx FZF_DEFAULT_COMMAND 'fd --type f'

function zi
    cd (zoxide query -l | fzf)
end

# alias
alias sf='source ~/.config/fish/config.fish'
alias ef='code ~/.config/fish/config.fish'
alias ll='ls -l'

# Abbreviations for common commands
abbr -a g git
abbr -a gs 'git status'
abbr -a ga 'git add'
abbr -a gc 'git commit'
abbr -a gp 'git push'
abbr -a gl 'git log --oneline'
abbr -a gd 'git diff'
abbr -a gb 'git branch'
abbr -a gco 'git checkout'

abbr -a la 'ls -la'
abbr -a l 'ls -l'
abbr -a .. 'cd ..'
abbr -a ... 'cd ../..'

abbr -a cls clear
abbr -a h history

# fnm (Node.js version manager)
# fnm env --use-on-cd --shell=fish | source
