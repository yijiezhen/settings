# Path to your oh-my-zsh installation.
export ZSH=/Users/jiyi/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"
USER=``

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
export PATH=$PATH:/opt/maven/bin:$GOPATH/bin:~/bin
export PATH=$PATH:/Users/jiyi/tools/spark-2.3.0-bin-hadoop2.7/bin
#export CLASSPATH="/Users/jiyi/lc/perf-tool/TDA/lib/*"
export GROOVY_HOME=/Users/jiyi/.sdkman/candidates/groovy/current/
export PATH=$GROOVY_HOME/bin:~/Library/Python/2.7/bin:$PATH
export MAVEN_OPTS='-Xmx3g -XXaltjvm=dcevm -Duser.language=en -Duser.country=us -javaagent:/Users/jiyi/Tools/hotswap/hotswap-agent.jar=autoHotswap=true -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=8000'
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
alias ts-viewer='cd /Users/jiyi/lc/ts-viewer;./ts-viewer'
alias gct='git checkout --track -b'
alias f='flutter'
alias mm='mvim'
alias a='cd ~/a'
alias b='cd ~/b'
alias gf="git push -f"
# export MAVEN_OPTS='-Xmx2g -XX:NativeMemoryTracking=summary -XX:MaxPermSize=256m -XX:+PrintReferenceGC -XX:+PrintStringTableStatistics -XX:+PrintGCDetails -XX:+PrintGCTimeStamps -XX:NativeMemoryTracking=summary -Duser.language=en -Duser.country=us -javaagent:/Users/jiyi/Tools/hotswap/hotswap-agent.jar=autoHotswap=true -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=8000'

alias lc_gg='~/Tools/sqlcl/bin/sql lc_jiyi/Pers#123@lcscrubgg.tlcinternal.com/LCSCRUBGG.lendingclub.com'
alias lc_qa='~/Tools/sqlcl/bin/sql tlc/tlc@lcqa.tlcinternal.com/LCQA_A.lendingclub.com'
alias lc_demo='~/Tools/sqlcl/bin/sql tlc/tlc@lcdemo.tlcinternal.com/LCDEMO.lendingclub.com'
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias cql='~/Tools/dse-6.0.2/bin/cqlsh'
alias vif='vim $(fzf)'

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/jiyi/.sdkman"
[[ -s "/Users/jiyi/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/jiyi/.sdkman/bin/sdkman-init.sh"
#. /Users/jiyi/.lc2/bin/.lc2-init.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/jiyi/Downloads/google-cloud-sdk/path.zsh.inc ]; then
  source '/Users/jiyi/Downloads/google-cloud-sdk/path.zsh.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/jiyi/Downloads/google-cloud-sdk/completion.zsh.inc ]; then
  source '/Users/jiyi/Downloads/google-cloud-sdk/completion.zsh.inc'
fi

export PATH="$HOME/.yarn/bin:$PATH"

function lb() {
#if [ -f ~/logbook/$(date '+%Y-%m-%d').md ]; then
#else  
#  cp ~/logbook/template.md ~/logbook/$(date '+%Y-%m-%d').md
#fi  
  vim ~/logbook/$(date '+%Y-%m-%d').md
}

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin:/Users/jiyi/lc/flutter/bin"
export GROOVY_HOME=/usr/local/opt/groovy/libexec
function cqlsh_with_host() {
  env CQLSH_HOST=$1.lendingcloud.us cqlsh -u $2
}
 
function cqlsh_dev_account() {
  env CQLSH_HOST=cassandra-dev.lendingcloud.us cqlsh --ssl -u <username> -p $MY_PASSWORD --debug
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

#ag -g "" | fzf

export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

