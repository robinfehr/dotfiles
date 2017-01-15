# Customize the promp
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# vim key bindings with true color enabled
alias v='env NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim'
alias vim='env NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim'
