#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
#PS1='Hi: '
force_color_prompt=yes
PS1="\[${cname}\]\u\[${csgn}\]@\[${chost}\]\h:\[${cw}\]\w\[${csgn}\]\$\[${crst}\] "
eval "$(starship init bash)"
export PATH="$PATH:/home/jojo/Programs/VisualStudioCode/VSCode-linux-x64/bin"
export PATH="$HOME/.local/bin:$PATH"
. "$HOME/.cargo/env"
