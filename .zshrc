# If you come from bash you might have to change your $PATH.
export PATH=/usr/local/bin:$PATH;
export PATH=$HOME/bin:$PATH;
export PATH=$HOME/.bin:$PATH;
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin";
export PATH=/usr/local/share/npm/bin:$PATH;

export PATH="$HOME/.fastlane/bin:$PATH";
export PATH="$PATH:/Applications/Xcode.app/Contents/Developer/usr/bin"

# matches case insensitive
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

# Ignore compiled files on vi/vim completion
zstyle ':completion:*:*:(v|vim):*:*files' ignored-patterns '*.(a|dylib|so|o|pyc)'

# Ignore pyc files for python
zstyle ':completion:*:*:(python*|pytest):*:*files' ignored-patterns '*.(pyc)'

# Don't complete stuff already being used
zstyle ':completion::*:(v|vim|rm|srm):*' ignore-line true

# Cache to increase speed
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$HOME/.zsh/tmp/cache"

# Explicitly write the type of what autocomplete has found / was looking for
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:warnings' format 'No matches for: %d'

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# if [ -f ~/.git-completion.zsh ]; then
# 	. ~/.git-completion.zsh
# fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


# Path to your oh-my-zsh installation.
export ZSH="/Users/ianjackson/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
# else
#   export EDITOR='mvim'
fi

# Path to dotfiles repo
# export DOTFILES="$(dirname "$(readlink "$HOME/.zshrc")")"

# # Find all zsh files
# configs=($DOTFILES/*/*.bash $DOTFILES/*/*.zsh)
# for file in ${configs:#*/completions.zsh}
# do
#   source "$file"
# done


fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit

alias dotfiles='/usr/bin/git --git-dir=/Users/ianjackson/.dotfiles/ --work-tree=/Users/ianjackson'
