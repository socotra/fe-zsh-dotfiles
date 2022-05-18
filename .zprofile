# FPATH: Contains a list of directories that the z/OS shell searches to find shell functions.
fpath+=$ZDOTDIR/zsh_functions # (this is this repo's path)

# PATH: Defines the default command path.
PATH=./node_modules/.bin:$PATH
PATH=$HOME/go/bin:$PATH

# set REPO_ROOT as desired; install Java 8, or comment-out:
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export REPO_ROOT=$HOME/Code/socotra # or your preference

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# env variables
export VERSION=1.2
export UNIFIED_LOGIN_URL=http://localhost:5000
export CUSTOM_ASSETS_URL=css/

# useful for FE; also consider setting up ~/.npmrc + NPM_TOKEN
export NODE_ENV='development' # only sane default
export PATH=./node_modules/.bin:$PATH
export LOCAL_ENV=true

# Ruby stuff
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # like `nvm` (for Ruby)

# Python stuff
eval "$(pyenv init --path)"

# optional

# add DVCS branch info to shell prompt (alternatively, use liquidprompt)
# https://github.com/nojhan/liquidprompt for those instructions, or for bash:
# source /usr/local/etc/bash_completion.d/git-completion.bash
# source /usr/local/etc/bash_completion.d/git-prompt.sh
# GIT_PS1_SHOWDIRTYSTATE=true # adds sigils to:
# export PS1='\u@mbp \w$(__git_ps1) \$ '

# switching node/ruby versions may be required for dev work (assumes `brew install fasd` run)
# [[ -s "$HOME/.nvm/nvm.sh" ]] && source "$HOME/.nvm/nvm.sh" # then: `nvm alias default system`

# eval "$(fasd --init auto)" # for CLI helpers: (fasd provides `z`: a better `cd`, etc.)
