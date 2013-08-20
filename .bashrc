###ADD TO .bash_profile if doesn't exist
# # Load .bashrc if it exists
# test -f ~/.bashrc && source ~/.bashrc


export LANG=en_US.UTF8
export LC_ALL=$LANG


## Bash history options
HISTFILESIZE=400000000
 HISTSIZE=10000
 PROMPT_COMMAND="history -a"
 export HISTSIZE PROMPT_COMMAND

 shopt -s histappend

## Bash Autocompletion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

## Tell ls to be colourful
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

## #ell grep to highlight matches
export GREP_OPTIONS='--color=auto'

## Aliases
alias ls='ls -G'
alias reload='source ~/.bashrc'

## Git Autocompletion
#    1) Copy this file to somewhere (e.g. ~/.git-completion.sh).
#    2) Add the following line to your .bashrc/.zshrc:
#        source ~/.git-completion.sh
#    3) Consider changing your PS1 to also show the current branch,
#       see git-prompt.sh for details.
#
#  file is located in /usr/local/etc/bash_completion.d/
#  if you install git with homebrew
#  along with the stock git-prompt.sh
#

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

## Git Bash Prompt Status
source /usr/local/etc/bash_completion.d/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM="auto verbose git"
export GIT_PS1_DESCRIBE_STYLE="branch"
export GIT_PS1_SHOWCOLORHINTS=true

## Custom Bash Prompt Modified from https://gist.github.com/ricardobeat/5980892

## Randomly selects color for end of Prompt
_ps1_star() {
    echo -n "$(_ps1_fg $(($RANDOM % 255)))❯❯"
}

## Clears colors
_ps1_clear() {
    echo -n "\[\e[0m\]"
}

## Sets Foreground Colors
_ps1_fg() {
    echo -n "\[\e[38;5;$1m\]"
}

## Sets Background Colors
_ps1_bg() {
    echo -n "\[\e[48;5;$1m\]"
}

## Echos jobs in progress
_ps1_jobs() {
    if [ `jobs | wc -l` -gt 0 ]; then
        echo -n "$(_ps1_fg 11)\j⃣  "
    fi
}

## Gets pwd to place in the title bar of shell
get_dir() {
    printf "%s" $(pwd | sed "s:$HOME:~:")
}

## Title bar
function set_titlebar {
        case $TERM in
            *xterm*|ansi|rxvt)
                printf "\033]0;%s\007" "$*"
                ;;
        esac

    }

## Crazy long prompt - Tried to make it readable but don't know how to split it up.....
export PROMPT_COMMAND='__git_ps1 "\n$(_ps1_clear)$(_ps1_bg 236)$(_ps1_fg 246)【 \D{%a %D} | \A 】$(_ps1_fg 15) \W " "$(_ps1_clear)$(_ps1_fg 236)$(_ps1_clear)\n【\!】$(_ps1_jobs)$(_ps1_clear)$(_ps1_star)$(_ps1_clear) "  "[%s$(_ps1_bg 236)]"; set_titlebar "$(get_dir)"'




