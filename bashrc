[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias tmux="tmux -2"
alias grep='grep --color=auto'
alias rm='rm -I'
alias nvim='/home/sathappan/Software/nvim/nvim.appimage'
PS1="\[\e]0;\u@\h: \w\a\]\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;38m\]\w\[\033[00m\]\$"
#PS1="\[\e[34m\]|\$ \u@\H-\v \W|\[\e[0m\]"

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi
#shopt -s cdspell
#shopt -s cdable_vars
#shopt -s checkhash
#shopt -s checkwinsize
#shopt -s mailwarn
#shopt -s sourcepath
#shopt -s no_empty_cmd_completion
#shopt -s histappend histreedit
#shopt -s extglob
export HISTFILESIZE=5000              # Larger history
export CLICOLOR=1                     # Use colors (if possible)
export LSCOLORS=ExGxFxdxCxDxDxBxBxExEx
export HISTCONTROL=ignoredups
#batterymon &
#xrdb -merge ~/.Xresources

#bind does not work while using non-terminal login (scp), so check if terminal and then
#initiate bind
#alias ssh='TERM=xterm-color ssh'
#case "$TERM" in
#    rxvt*)
        bind '"\e[A": history-search-backward'
        bind '"\e[B": history-search-forward'
#        ;;
#esac
#xset -b
set bell-style visible

#$PATH:$HOME/.juju/bin/:$HOME/Software/juju/bin/:
export AWS_ACCESS_KEY_ID=AKIAIWA5WHUCKDLHPO4Q
export AWS_SECRET_ACCESS_KEY=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
#export PYTHONPATH=/home/sathappan/workspace/geocoding/geocoder_rss/geocoding/twitter/twitter-geo/:$HOME/workspace/phoenix/phoenix_clean/phoenix/:$HOME/.local/python_utils/:$PYTHONPATH


# Required for matplotlib freetype.
export CPLUS_INCLUDE_PATH=/home/sathappan/.local/include/freetype2/:.

#export CLING_PATH=/home/sathappan/Software/cling/cling_2017-05-03_ubuntu16/bin
export PATH=$HOME/.local/bin/:$HOME/Software/apache-maven-3.3.1/bin/:/usr/bin/:/bin:/sbin:/home/sathappan/workspace/geocoding/geocoder_rss/geocoding/twitter/twitter-geo/:$CLING_PATH:.
#export PATH=$HOME/anaconda3/bin/:$PATH
export SPATIALINDEX_C_LIBRARY=$HOME/.local/lib/libspatialindex_c.so
export LD_LIBRARY_PATH=$HOME/.local/lib/
#ipython2 notebook --profile=nbserver 2>/dev/null &
#ssh-agent add keys,
#ssh-add -l >/dev/null || alias ssh='ssh-add -l >/dev/null || ssh-add && unalias ssh; ssh'
#export PHOENIX_S3ACCESS="AKIAI4QL47EIZM3NDGEA"
#export PHOENIX_S3SECRET="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"

#export PYTHONNOUSERSITE=1
export WORKON_HOME=$HOME/Envs
#source /usr/local/bin/virtualenvwrapper.sh
#source ~/.autoenv/activate.sh

#alias ssh='TERM=xterm-256color ssh'
