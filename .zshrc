
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/rida/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/rida/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/rida/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/rida/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

alias nvim="/Users/rida/Downloads/nvim-macos/bin/nvim"

# setting up shell prompt
function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}
COLOR_RESET=$'%f'
COLOR_USR=$'%F{197}'
COLOR_DIR=$'%F{099}'
COLOR_GIT=$'%F{069}'
COLOR_PROMPT=$'%F{204}'
setopt PROMPT_SUBST
export PROMPT='${COLOR_PROMPT}[%D{%f/%m/%y} %D{%L:%M:%S}] ${COLOR_USR}%n ${COLOR_DIR}%~ ${COLOR_GIT}$(parse_git_branch) ${COLOR_PROMPT}♥ ${COLOR_RESET}'
# done setting up shell prompt

alias python="python3"

