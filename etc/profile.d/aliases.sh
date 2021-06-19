alias psfind='ps aux | grep -i '
alias findf='find . -type f -name '
alias ffind='find . -type f -ls  '
alias ls='ls --color=auto'
alias la='ls  -A'
alias l='ls -CF'
alias l.='ls -d .* '
alias ll='ls -alFhtr'

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'


alias sdisable='systemctl disable '
alias senable='systemctl enable '
alias srestart='systemctl restart '
alias sstatus='systemctl status '
alias sstop='systemctl stop '
alias sstart='systemctl stop '

alias asearch='apt-cache search '
alias ainstall='apt-get install  -y '
alias aremove='apt-get remove -y '
alias aupdate='apt-get upgrade '

alias stnode='pm2 start --max-memory-restart 500M  '

#alias gclone='git clone '
#alias fcclone="git clone https://github.com/fcenobi/$1.git"
#alias gs='git-status'
#alias gd='git-diff'
#alias ga='git-add'
#alias gb='git-branch'
#alias gc='git-commit'
#alias gca='git-commit -v -a'
#alias gcam='git-commit --amend -v'
#alias gl='git-log'
#alias gll="git-log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

alias penv-reload="source $PENV_PATH"

alias dnf-install='dnf install -y '
alias dnf-search='dnf search '
alias catalina_base='cd $CATALINA_BASE'
alias catalina_home='cd $CATALINA_HOME'
alias lst1='/bin/ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'''
alias lst='/bin/ls -R | grep ":$" | sed -e '"'"'s/:$//'"'"' -e '"'"'s/[^-][^\/]*\//--/g'"'"' -e '"'"'s/^/   /'"'"' -e '"'"'s/-/|/'"'"
alias "ls-mod=ls -al|awk '{k=0;s=0;for(i=0;i<=8;i++){;k+=((substr(\$1,i+2,1)~/[rwxst]/)*2^(8-i));};j=4;for(i=4;i<=10;i+=3){;s+=((substr(\$1,i,1)~/[stST]/)*j);j/=2;};if(k){;printf(\"%0o%0o \",s,k);};print;}'" 
alias filetree='find | sed '\''s|[^/]*/|- |g'\'''
alias filetree1="find | sed 's|[^/]*/|- |g'"
alias dirtree='find . -type d | sed -e "s/[^-][^\/]*\//  |/g" -e "s/|\([^ ]\)/|-\1/"'
alias apachestatus='apache2ctl -SMt -D DUMP_INCLUDES '
alias lspath='sed 's/:/\n/g' <<< "$PATH"'
alias updatealiases='curl -s $ALIAS_PATH > ~/.bash_aliases && chmod +777  ~/.bash_aliases '
alias showpath='echo $PATH | tr : "\n"'

export FCGITBASE="https://github.com/fcenobi/"
export FCRAWBASE="https://raw.githubusercontent.com/fcenobi/"
export ALIAS_PATH="https://raw.githubusercontent.com/fcenobi/script/master/etc/profile.d/aliases.sh"
alias updatprofiled='curl -s $ALIAS_PATH > /etc/profile.d/aliases.sh && chmod +777 /etc/profile.d/aliases.sh '
alias updatealias='/bin/bash < <(curl -s $ALIAS_PATH) '

alias wan='curl ifconfig.co'
alias iplist="ip -o addr show up | grep  -e \"inet6 \" -v -e \"lo \" | awk '{print \$2,\$4}' "
alias gw="ip -o route get 1.1.1.1 |  awk '{print \$5,\$7,\$3}' "

alias arpscan='arp-scan -lx -I '
