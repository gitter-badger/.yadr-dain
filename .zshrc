# Path to your oh-my-zsh installation.
export ZSH=/Users/dain/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git bundler osx rake ruby)

# User configuration

export PATH="/Users/dain/.rvm/gems/ruby-2.2.0/bin:/Users/dain/.rvm/gems/ruby-2.2.0@global/bin:/Users/dain/.rvm/rubies/ruby-2.2.0/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/TeX/texbin:/Users/dain/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#Testing

# ALIAS CONFIG

## Goto
alias codereview='vim ~/Dropbox/notes/code-review-checklist.txt'
alias dan='vim ~/Dropbox/work/howl/notes/1-1s/dan.md'
alias dev='cd ~/Development'
alias d='cd ~/.dotfiles'
alias asu="cd ~/code/rails/activesupport"
alias dr='cd ~/Dropbox'
alias drop='cd ~/Dropbox'
alias gratitude='vim ~/Dropbox/docs/journal/gratitude.txt'
alias docs='cd ~/Dropbox/docs ; vim .'
alias wp='vim -c ":e /Users/dain/Dropbox/work/howl/notes/wolfpub"'
alias w='cd ~/Development/wolfpub'
alias podcast='vim ~/Dropbox/work/howl/notes/devblog.md'
alias r='cd ~/code/refactoring-good-to-great'
alias training-log='vim ~/Dropbox/notes/training-log.md'
alias ajc='vim ~/Dropbox/work/howl/notes/1-1s/ajc.md'
alias notes="cd ~/Dropbox/notes ; vim ."
# alias hw='cd ~/Development/howl-web'
# alias hi='cd ~/Development/howl-ios'

# Git
alias gad='git add --all .'
alias gag='git add . && git commit --amend --no-edit && git push -f'
alias gbc='gdc'
alias gca='git commit -a'
alias gcaa='git commit -a --amend -C HEAD'
alias gcl='git clone'
alias gcm="git commit -m"
alias gco='git checkout'
alias gd='git diff'
alias gdc='git diff --cached'
alias gdm='git diff master'
alias get='sudo apt-get install'
alias gg='git lg'
alias gpush='echo "Use gp!" && git push'
alias gp='git push'
alias gpf='git push -f'
alias gpr='git pull --rebase'
alias grc='git rebase --continue'
alias undeployed='git fetch --multiple production origin && git log production/master..origin/master'
alias sync='git add -u . && git commit -m "Minor changes. Commit message skipped." && repush'
alias track='git checkout -t'
alias hpush='git push heroku'
alias repush="gpr && git push"
alias review="git diff master"
alias safepush='git pull --rebase && bundle install && rdm && rake && git push'
alias squash='git rebase -i master'
alias amend="git commit --amend"
alias stage='git push staging head:master && staging open'
alias patch='git format-patch HEAD^ --stdout > patch.diff'
alias sp='safepush'

# Ruby/Rails
alias b='bin/rspec'
alias be='bundle exec'
alias bi='bundle install -j 8'
alias bdp='bin/deploy production'
alias bds='bin/deploy staging'
alias be='bundle exec'
alias br='bin/rspec'
alias bu='bundle update'
alias bunbang='bundle install && !!'
alias fs='foreman start'
alias grake='rspec --drb spec/ && cucumber --drb features/'
alias bake='bundle exec rake'
alias gurad='guard'
alias killruby='killall -9 ruby'
alias killrudy='killruby'
alias rc='bin/rails console'
alias remigrate='rake db:migrate && rake db:migrate:redo && rake db:schema:dump && rake db:test:prepare'
alias rdm="bin/rake db:migrate"
alias rdtp="bin/rake db:test:prepare"
alias rs='bundle install && rails server -p 3000'
# alias sfh='cd ~/code/speaking-for-hackers-book'
alias shpush='rake && hpush'
alias reguard='killall -9 ruby ; guard'
alias rerake='!! && rake'
alias ss='spring stop'
alias irb='irb --readline -r irb/completion'

# Databases & Datastores
alias startpostgres='pg_ctl -D /usr/local/var/postgres9.4 -l /usr/local/var/postgres9.4/server.log start'
alias startredis='redis-server /usr/local/etc/redis.conf &'
alias stoppostgres='pg_ctl -D /usr/local/var/postgres9.4 -l /usr/local/var/postgres9.4/server.log stop'
alias restart_apache="sudo /etc/init.d/apache2 restart"
alias restart_postgres="stoppostgres && startpostgres"

# Heroku
alias herkou='heroku'
alias sc='staging-console'
alias pc='production-console'
alias hpr='hub pull-request'
alias tail-logs='heroku logs -t'
alias staging-console='heroku run console --remote staging'
alias staging-tail='heroku logs --tail --remote staging'
alias production-console='heroku run console --remote production'
alias production-tail='heroku logs --tail --remote production'
# I have to install the `parity` gem to use these
# alias db-pull-staging='staging backup && development restore staging'
# alias db-pull-production='production backup && development restore production'
# alias db-copy-production-to-staging='production backup && staging restore production'

# Misc.
alias ack='ag'
alias aliases='vim ~/.dotfiles/zsh/aliases'
alias c='cd'
alias dbprep='rdm && rdtp'
alias -g G='| grep'
alias h='sync'
alias js='jekyll serve'
alias -g M='| more'
alias mastre='master'
alias newscreen="tmux"
alias lt='lein test'
alias lrs='lein ring server'
alias -g L='| less'
alias parallel='rdtp && rake parallel:prepare test:parallel_with_specs'
alias prepdb='dbprep'
alias remore='!! | more'
alias retag='ctags -R --exclude=.svn --exclude=.git --exclude=log --exclude=tmp *'
alias retagwithcoffee='ctags -R --exclude=.svn --exclude=.git --exclude=log --exclude=tmp * && coffeetags -R -f >> tags'
alias so='source ~/.dotfiles/zsh/aliases'
alias u='cd ..'
alias v='vim'
alias vi='vim'

# Ideas
# alias i='ssh -t ben@downtowncrossingquartet.com screen -rd irc'
# alias izea='vim ~/Dropbox/work/thoughtbot/notes/izea.md'
# alias jokes='vim ~/Dropbox/notes/jokes.txt'
# alias journal='vim ~/Dropbox/docs/journal/2011.txt'
# alias mentor='vim ~/Dropbox/work/thoughtbot/notes/mentees.txt'


function git-new-remote-tracking {
git checkout -b $1 && git push -u origin $1
}

function git_branch_name {
val=`git branch 2>/dev/null | grep '^*' | colrm 1 2`
echo "$val"
}

function git-done {
branch=`git_branch_name`
killruby ; spring stop ; git checkout master && git merge $branch --ff-only && bundle install && prepdb && bin/rspec && git push && git branch -D $branch && git push origin :$branch
}

function git-nuke {
git branch -D $1 && git push origin :$1
}

compdef _git git-nuke=git-checkout

function git-on-master {
branch=`git_branch_name`
git checkout master && git pull --rebase 
git checkout $branch
git rebase master
}

function g {
if [[ $# > 0 ]]; then
  git $@
else
  git status
fi
}

function rrg {
bin/rake routes | grep $1
}

function take {
mkdir $1
cd $1
}

