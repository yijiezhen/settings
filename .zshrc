# Path to your oh-my-zsh installation.
export ZSH=/Users/jyi/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"
#ZSH_THEME="powerlevel9k/powerlevel9k"
# USER=``

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
plugins=(git)

# User configuration

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
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
#
#
#
#

export GOPATH=$HOME/github/go
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
export PATH=$PATH:/opt/maven/bin:$GOPATH/bin:~/bin:/usr/local/bin
export GROOVY_HOME=/Users/jyi/.sdkman/candidates/groovy/current/
export PATH=$GROOVY_HOME/bin:~/Library/Python/2.7/bin:$PATH
export MAVEN_OPTS='-Xmx3g -XXaltjvm=dcevm -Duser.language=en -Duser.country=us -javaagent:/Users/jyi/Tools/hotswap/hotswap-agent.jar=autoHotswap=true -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=8000'
#export MAVEN_OPTS='-Xmx3g -XX:MaxPermSize=256m -Duser.language=en -Duser.country=us -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=8000'
alias i="mvn clean install -Dmaven.test.skip=true"
alias iu="mvn clean install -U -Dmaven.test.skip=true -DskipTests -Djavax.xml.accessExternalSchema=all"
alias iut="mvn clean install -U -Djavax.xml.accessExternalSchema=all"
alias j="mvn jetty:run -Dmaven.test.skip=true"
alias t="mvn tomcat7:run -Dmaven.test.skip=true"
alias c="cd ~/lc"
alias h2="sh ~/Tools/h2/bin/h2.sh"
alias gm="git commit --amend"
alias gam="git commit -am"
alias gs="git status"
alias ga="git add ."
alias gp="git push"
alias g="groovy"
alias gdl="gradle"
alias gct='git checkout --track -b'
alias f='flutter'
alias mm='mvim'
alias a='cd ~/a'
alias b='cd ~/b'
alias gf="git push -f"
alias vim="/usr/local/Cellar/vim/8.1.1450/bin/vim"
alias vi="/usr/local/Cellar/vim/8.1.1450/bin/vim"
# export MAVEN_OPTS='-Xmx2g -XX:NativeMemoryTracking=summary -XX:MaxPermSize=256m -XX:+PrintReferenceGC -XX:+PrintStringTableStatistics -XX:+PrintGCDetails -XX:+PrintGCTimeStamps -XX:NativeMemoryTracking=summary -Duser.language=en -Duser.country=us -javaagent:/Users/jyi/Tools/hotswap/hotswap-agent.jar=autoHotswap=true -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=8000'

alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias vif='vim $(fzf)'

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/jyi/.sdkman"
[[ -s "/Users/jyi/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/jyi/.sdkman/bin/sdkman-init.sh"
#. /Users/jyi/.lc2/bin/.lc2-init.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/jyi/Downloads/google-cloud-sdk/path.zsh.inc ]; then
  source '/Users/jyi/Downloads/google-cloud-sdk/path.zsh.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/jyi/Downloads/google-cloud-sdk/completion.zsh.inc ]; then
  source '/Users/jyi/Downloads/google-cloud-sdk/completion.zsh.inc'
fi

export PATH="$HOME/.yarn/bin:$PATH"
export PATH="/usr/local/bin:$PATH"

function lb() {
#if [ -f ~/logbook/$(date '+%Y-%m-%d').md ]; then
#else  
#  cp ~/logbook/template.md ~/logbook/$(date '+%Y-%m-%d').md
#fi  
  vim ~/logbook/$(date '+%Y-%m-%d').md
}

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin:/Users/jyi/a/flutter/bin"
export GROOVY_HOME=/usr/local/opt/groovy/libexec
 
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

#ag -g "" | fzf

export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export GITHUB_TOKEN=496cf5518265cf53d5b90155ddfa162f1d2dfaf6
alias dev-tmux='tmux new-session \; split-window -h \; split-window -v \; attach'
alias bonsai='/Users/jyi/a/bonsai/bonsai'
alias pksd='/Users/jyi/a/pksd/pksd'
alias t='terraform'
alias g='hub'

eval "$(direnv hook zsh)"
