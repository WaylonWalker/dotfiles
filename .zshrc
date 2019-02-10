export TERM="xterm-256color"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/walkews/.oh-my-zsh"
eval `dircolors ~/Git/dircolors-solarized/dircolors.256dark`
export PATH=/home/walkews/miniconda3/bin:$PATH
export PATH=/user/local/lib/node_modules/bin:$PATH
export PATH=$PATH:~/bin
export EDITOR=vim
export HISTSIZE=25000
export SAVEHIST=25000
setopt INC_APPEND_HISTORY
setopt EXTENDED_HISTORY

export FZF_DEFAULT_COMMAND='fd --type f'
# export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

alias c='f() { cd $1 && clear && pwd && ls -lht };f'
alias cls='clear'
alias cone='cd /mnt/c/Users/walkews/OneDrive\ -\ Caterpillar'
alias cr='cd /mnt/c/Users/walkews/OneDrive\ -\ Caterpillar/LPSD-RemanAnalytics/projects/remananalytics/remananalytics'
alias cpers='cd /mnt/c/personal'
alias sp='source /usr/local/bin/set_proxy.sh'
alias up='source /usr/local/bin/unset_proxy.sh'
alias a='source activate $*'
alias w='clear && curl "wttr.in/?pq"'
alias m='clear && curl "wttr.in/moon?pq"'
alias aa='source activate adhoc' 
alias vim='nvim'
alias ignore='curl https://www.gitignore.io/api/vim,node,data,emacs,python,pycharm,executable,sublimetext,visualstudio,visualstudiocode > .gitignore'
alias cat=bat
alias tls=tmux ls


alias p='clear && ptipython'
alias p='powershell.exe Get-Clipboard'
alias fcsv='tabview "$(fd csv | fzf --preview "cat {} | head -20 | column -ts,")"'


alias gitignore='curl https://www.gitignore.io/api/vim,emacs,python,pycharm,sublimetext,visualstudio,visualstudiocode,data > .gitignore'

. ~/Git/z/z.sh
unsetopt BG_NICE
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="werlevel9k/powerlevel9k"
ZSH_THEME="agnoster"
ZSH_THEME="miloshadzic"

# ZSH_THEME="avit"

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
ZSH_DISABLE_COMPFIX=true
plugins=(
git
zsh-syntax-highlighting
zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
# source $ZSH/themes/powerlevel9k/powerlevel9k.zsh-theme
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(anaconda dir vcs)
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='240'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='083'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='077'
POWERLEVEL9K_ANACONDA_FOREGROUND='075'
POWERLEVEL9K_ANACONDA_BACKGROUND='240'
POWERLEVEL9K_ANACONDA_ICON=''
POWERLEVEL9K_ANACONDA_LEFT_DELIMITER='('
POWERLEVEL9K_ANACONDA_RIGHT_DELIMITER=')'
POWERLEVEL9K_ANACONDA_BACKGROUND=''

POWERLEVEL9K_VCS_FOREGROUND='white'
POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_VCS_BACKGROUND='white'
POWERLEVEL9K_FOLDER_ICON=''

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[[ -s "$HOME/.local/share/marker/marker.sh"  ]] && source "$HOME/.local/share/marker/marker.sh"
clear
# screenfetch

unalias z
z() {
      if [[ -z "$*" ]]; then
              cd "$(_z -l 2>&1 | fzf +s --tac | sed 's/^[0-9,.]* *//')"
                else
                        _last_z_args="$@"
                            _z "$@"
                              fi
                          }

                          zz() {
                                cd "$(_z -l 2>&1 | sed 's/^[0-9,.]* *//' | fzf -q "$_last_z_args")"
                            }
alias j=z
fshow() {
      git log --graph --color=always \
                --format="%C(auto)%h%d %s %C(black)%C(bold)%cr" "$@" |
        fzf --ansi --no-sort --reverse --tiebreak=index --bind=ctrl-s:toggle-sort \
                  --bind "ctrl-m:execute:
                        (grep -o '[a-f0-9]\{7\}' | head -1 |
                                        xargs -I % sh -c 'git show --color=always % | less -R') << 'FZF-EOF'
                                                        {}
                                                        FZF-EOF"
                                                    }
fco() {
      local tags branches target
        tags=$(
        git tag | awk '{print "\x1b[31;1mtag\x1b[m\t" $1}') || return
          branches=$(
          git branch --all | grep -v HEAD |
          sed "s/.* //" | sed "s#remotes/[^/]*/##" |
          sort -u | awk '{print "\x1b[34;1mbranch\x1b[m\t" $1}') || return
            target=$(
            (echo "$tags"; echo "$branches") |
                fzf --no-hscroll --no-multi --delimiter="\t" -n 2 \
                            --ansi --preview="git log -200 --pretty=format:%s $(echo {+2..} |  sed 's/$/../' )" ) || return
                  git checkout $(echo "$target" | awk '{print $2}')
              }
fstash() {
local out q k sha
while out=$(
git stash list --pretty="%C(yellow)%h %>(14)%Cgreen%cr %C(blue)%gs" |
fzf --ansi --no-sort --query="$q" --print-query \
--expect=ctrl-d,ctrl-b);
do
mapfile -t out <<< "$out"
q="${out[0]}"
k="${out[1]}"
sha="${out[-1]}"
sha="${sha%% *}"
[[ -z "$sha" ]] && continue
if [[ "$k" == 'ctrl-d' ]]; then
git diff $sha
elif [[ "$k" == 'ctrl-b' ]]; then
git stash branch "stash-$sha" $sha
break;
else
git stash show -p $sha
fi
done
}

fs() {
	local -r fmt='#{session_id}:|#S|(#{session_attached} attached)'
	{ tmux display-message -p -F "$fmt" && tmux list-sessions -F "$fmt"; } \
		| awk '!seen[$1]++' \
		| column -t -s'|' \
		| fzf -q '$' --reverse --prompt 'switch session: ' -1 \
		| cut -d':' -f1 \
		| xargs tmux switch-client -t
}
