export ALIAS_PATH="https://raw.githubusercontent.com/fcenobi/script/master/etc/profile.d/aliases.sh"
alias updatealias='/bin/bash < <(curl -s $ALIAS_PATH) '
/bin/bash < <(curl -s $ALIAS_PATH) 
