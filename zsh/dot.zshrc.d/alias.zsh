# check for GNU ls
LS=ls
DIRCOLS=dircolors
command -v gls > /dev/null 2>&1 && LS=gls
command -v gdircolors > /dev/null 2>&1 && DIRCOLS=gdircolors

PROMPT_COMMAND='if [ $? -ne 0 ]; then ERROR_FLAG=1; else ERROR_FLAG=; fi'
if [ "$TERM" != "dumb" ]; then
    # enable color support of grep
    export GREP_OPTIONS='--color=auto'
    export LS_OPTIONS='--color=auto'
    # enable color support of ls
    lscols=auto
    [ -f $HOME/.dircolors ] && eval "`$DIRCOLS -b $HOME/.dircolors`"
    # to get emacs -nw to use 256 colors
    export TERM=xterm-256color
else
    lscols=none
    PS1="\h\$ "
fi

dir()  { $LS --color=$lscols -lFh "$@";}
dirt() { dir -rt "$@";}
dird() { dir -d "$@";}
dira() { for d in "${@:-.}"; do (cd "$d";pwd; dird .*); done;}
rea()  { history | egrep "${@:-}";}
m()    { less "$@";}
e()    { $EMACS -nw "$@";}
c()    { cat "$@";}
now()  { date +%Y%m%d%H%M%S }
ptt()  { ssh bbsu@ptt.cc }

# Useful aliases
alias ls='$LS $LS_OPTIONS'
alias ll='$LS $LS_OPTIONS -alF'
alias la='$LS $LS_OPTIONS -A'
alias l='$LS $LS_OPTIONS -CF'
alias cd..="cd .."
alias ssh="ssh -X"
alias ..="cd .."
alias lf='lsof -n -P -i4TCP | grep LISTEN'
alias rehash='hash -r'
alias llocate='locate -d $HOME/opt/lib/locate.database'
alias findout='locate -d $HOME/opt/lib/locate.database'

