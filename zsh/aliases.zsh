# Enable aliases to be sudo'ed
alias sudo="sudo "

alias c='clear'

# restore colors to GNU ls
alias ls="ls -G --color=tty"
alias ll="ls -lah"
alias la="ls -a"
alias l="ls -lh"

# typos
alias cd..="cd .."
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ~="cd ~"

# Git
alias g="git"
alias gc="git commit -m"  # + commit message
alias gca="git add . && git commit -m"  # + commit message
alias gs="git status -sb"
alias gl="git log --pretty=short"
alias gd="git diff"
alias gds="git diff --staged"
alias gpom="git push origin main"
alias glom="git pull origin main"
alias gpo="git push origin"  # + branch name
alias glo="git pull origin"  # + branch name
alias gphm="git push hosted main"  # self-hosted git
alias gb="git checkout"  # + existing branch name
alias gbn="git checkout -b"  # + new branch name
alias grm="git rebase -i origin/main"
alias gsub="git submodule update --recursive --remote"
alias gundo="git reset --soft HEAD~1"
alias greset="git reset"
alias github="gh repo view --web"
alias gist="gh gist create --web"
glall() {
  # pull all remote branches
  # https://stackoverflow.com/a/10312587
  for remote in `git branch -r`; do git branch --track ${remote#origin/} $remote; done
  git fetch --all
  git pull --all
}

export SSH_KEY_PATH="/Volumes/S500GB/Google/Keys"
# SSH
alias sshalt="ssh -p 2222"
alias moshalt="mosh --ssh=\"ssh -p 2222\""
alias pubkey="more $SSH_KEY_PATH/id_ed25519.pub | pbcopy | echo '=> Public key copied to clipboard.'"
alias pubkey_rsa="more $SSH_KEY_PATH/gautam.pub | pbcopy | echo '=> Public key copied to clipboard.'"

# youtube-dl
alias ytdl="youtube-dl -f bestvideo+bestaudio"
alias ytmp3="youtube-dl -f bestaudio -x --audio-format mp3 --audio-quality 320K"

# fun
alias weather="curl 'https://wttr.in/?format=v2'"

# Misc
alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'
alias assh='ssh -i $SSH_KEY_PATH/newaws.pem -l ubuntu'
alias ascp='scp -i $SSH_KEY_PATH/newaws.pem -l ubuntu'
alias zdrive='ssh root@files.zimbra.io'
alias mind="ssh -i $SSH_KEY_PATH/gautam.pvt gautam@mind.zimbra.io"
alias mindp="ssh -L localhost:7071:localhost:7071 gautam@mind.zimbra.io"
alias myip="curl http://ipecho.net/plain; echo"
alias vih='sudo vi /etc/hosts'
alias pszd='ps -eaf | grep -i Desktop | grep -v grep | awk "{print \$2}"' 
alias kzd='/usr/bin/pkill -9 $(ps -eaf | grep -i Desktop | grep -v grep | awk "{print \$2}")'
alias ossh='ssh -i $SSH_KEY_PATH/gautam.pvt -l ubuntu'
alias oscp='scp -i $SSH_KEY_PATH/gautam.pvt'
alias wp='ssh -i $SSH_KEY_PATH/wp opc@144.24.14.47'
alias digs='dig +short'
alias ch='cat /etc/hosts'
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/openjdk/bin:$PATH"
alias zd="vi ~/Library/Application\ Support/@zimbra/electron-app/server_prefs.json"
