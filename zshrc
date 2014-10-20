#path
#export PATH='/usr/local/bin:$PATH'
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
#git in prompt
setopt prompt_subst
autoload -Uz vcs_info
zstyle ':vcs_info:*' actionformats \
'%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:*' formats       \
'%F{5}[%F{2}%b%F{5}]%f '
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'

zstyle ':vcs_info:*' enable git cvs svn

stty -ixon

# or use pre_cmd, see man zshcontrib
vcs_info_wrapper() {
vcs_info
if [ -n "$vcs_info_msg_0_" ]; then
echo "%{$fg[grey]%}${vcs_info_msg_0_}%{$reset_color%}$del"
fi
}

PROMPT='%1d$(vcs_info_wrapper)$ '
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# all stuff from old bash profile

alias gmail="mutt -F ~/.mutt/gmail.rc"
alias workmail="mutt -F ~/.mutt/work.rc"

alias tma="tmux attach -t"

alias bs="source ~/.bash_profile"

alias u="cd .."
alias standard="cp -v ~/Dropbox/Mediregs/ruby_work/pdftohtml/standard_scan.rb ."

alias 10004="cd ~/Dropbox/Mediregs/mre/collections/mre_pm_100_04"
alias 10003="cd ~/Dropbox/Mediregs/mre/collections/mre_pm_100_03"
alias 10020="cd ~/Dropbox/Mediregs/mre/collections/mre_pm_100_20"
alias hpms="cd ~/Dropbox/Mediregs/mre/collections/mre_cms_hpmsguidance"
alias pub15="cd ~/Dropbox/Mediregs/mre/collections/hc_pm_pr"
alias 10007="cd ~/Dropbox/Mediregs/mre/collections/mre_pm_100_07"
alias 10002="cd ~/Dropbox/Mediregs/mre/collections/mre_pm_100_02"
alias 10008="cd ~/Dropbox/Mediregs/mre/collections/mr_pm_100_08"
alias 10006="cd ~/Dropbox/Mediregs/mre/collections/mr_pm_100_6"
alias 10001="cd ~/Dropbox/Mediregs/mre/collections/mr_pm_100_01"
alias 10005="cd '~/Dropbox/Mediregs/mre/collections/mre_mr_mrsp 100-05'"
#
#dt() { echo "$(date +'%m.%d.%y')";}
alias geeknote="python /Applications/geeknote/geeknote.py"
alias todo="python /Applications/geeknote/geeknote.py edit todo"
alias cabinate="python /Applications/geeknote/geeknote.py create --notebook Cabinate --content '' --title "
alias focusupmed="afplay ~/music/audio\ hijack/focus\ At\ Will\ -\ Up\ Tempo\ -\ Medium.mp3 &" 
alias focusalphahigh="afplay ~/Music/Audio\ Hijack/Focus\ At\ Will\ -\ Alpha\ Chill\ -\ High.mp3 &" 
#
## Ruby and Rails Aliases
#alias be="bundle exec"
alias ror="cd ~/Dropbox/development/RoR/RailsTuts/sample_app"
alias nodejs="cd ~/Dropbox/development/javascript/node"
alias alliance="cd ~/Dropbox/development/alliance_larp"

## starwars!
alias starwars="telnet towel.blinkenlights.nl"

