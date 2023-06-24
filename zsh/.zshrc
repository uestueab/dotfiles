# -- VARIABLES
export HISTSIZE=10000
export SAVEHIST=10000
export HISTFILE=~/.histfile 
export HISTTIMEFORMAT='%F %T '
export DISPLAY=:0.0
export DIRSTACKSIZE=50    #Keep track of navigated dirs in a stack

# ZSH MODIFICATIONS
setopt APPEND_HISTORY     # Don't erase history
setopt EXTENDED_HISTORY   # Add additional data to history like timestamp
setopt HIST_BEEP
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS  # Don't show duplicates in search
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_SAVE_NO_DUPS
setopt INC_APPEND_HISTORY # Add immediately
setopt SHARE_HISTORY      # Share history between session/terminals
setopt extended_glob
setopt inc_append_history
setopt AUTO_PUSHD         # Make cd push the old directory onto the directory stack.
setopt PUSHD_IGNORE_DUPS  # Don’t push multiple copies of the same directory onto the directory stack.   

setopt aliases      # enable aliases in non-interactive shells
setopt AUTO_CD      # -- "dir" instead of "cd dir"
setopt +o nomatch

export EDITOR=/usr/bin/nvim
export BAT_PAGER=''
export FZF_DEFAULT_COMMAND='rg --files'
export FZF_DEFAULT_OPTS="
	--color=fg:#E1D7C6,bg:#191724,hl:#f6c177
	--color=fg+:#0a0b11,bg+:#eb6f92,hl+:#403d52
	--color=border:#403d52,header:#31748f,gutter:#403d52
	--color=spinner:#f6c177,info:#f6c177,separator:#403d52
	--color=pointer:#0a0b11,marker:#eb6f92,prompt:#F09383

    --pointer=' '
    --bind ,:cancel,tab:accept,esc:ignore,right:toggle+up
    --reverse
"

# -- load zsh functions located at .zshrc.d and more
for file in ~/.zshrc.d/*;
do
    source $file
done

source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
source $HOME/.vi-mode.zsh                # responsible for the prompt
source $HOME/.zsh-vi-search.zsh          # Adds support for searching the current line (in normal vi mode) to zsh.
source /usr/share/LS_COLORS/dircolors.sh # via: lscolors-git
zstyle ':completion:*' rehash true

# -- ci"
autoload -U select-quoted
zle -N select-quoted
for m in visual viopp; do
    for c in {a,i}{\',\",\`}; do
        bindkey -M $m $c select-quoted
    done
done

# -- ci{, ci(
autoload -U select-bracketed
zle -N select-bracketed
for m in visual viopp; do
    for c in {a,i}${(s..)^:-'()[]{}<>bB'}; do
        bindkey -M $m $c select-bracketed
    done
done

# -- surround
autoload -Uz surround
zle -N delete-surround surround
zle -N add-surround surround
zle -N change-surround surround
bindkey -a cs change-surround
bindkey -a ds delete-surround
bindkey -a ys add-surround
bindkey -M visual S add-surround

# -- ssh/scp completion
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
setopt COMPLETE_ALIASES
zstyle ':completion::complete:*' gain-privileges 1

# -- edit command in vim, when hitting ':' in normal mode
autoload edit-command-line; zle -N edit-command-line
bindkey -M vicmd : edit-command-line

# -- some keybinds
bindkey ",f" fzf-history-widget                  # fzf history search
bindkey ",fd" fzf-cd-widget                      # fzf cd
bindkey ",ff" fzf-file-widget                    # fzf find file
bindkey "^[[A" history-beginning-search-backward # completion based on input
bindkey "^[[B" history-beginning-search-forward  # completion based on input
bindkey "^H" backward-kill-word                  # behaves like Control-W in vim

# Wrap the command in function
jump_to_directory() {
    #eval: Evaluates tilda in the path as the correct home directory: '~' => '/home/<user>
    #dirs: Show dir stack (prev visited paths) 
    #grep: Filter out paths you dont want to include (here: any single character paths like '~')
    cd $(eval echo $( dirs -p | grep -v '^.$' | fzf --prompt "DIR STACK: Jump to path: "))
}

zle -N jump_to_directory # Create a zsh widget for the fuction

bindkey -M viins ',jp' jump_to_directory # Run the widget when given keybind was pressed 
bindkey -M vicmd ',jp' jump_to_directory # Do the same for vi-command mode as well

#------------------------------------------------------------------------------------------------------------
# NOTE: Prefixes with f_ denote functions located at .zshrc.d
#------------------------------------------------------------------------------------------------------------
#| ALIAS   | DESCRIPTION
#------------------------------------------------------------------------------------------------------------
#| cat:    | cat on steroids
#| dlm:    | downlaod music
#| gds:    | git diff of fzf selection with immediat copy to clipboard. Easy follow up with: git add <paste> ...
#| gfetch: | view git remote changes before pull
#| gshow:  | file content of a previous git commit
#| lsd:    | list directories only
#| mpv:    | mpv to play yt playlists
#| ncdu:   | Tui alternative of 'du'
#| pdf:    | put the terminal in background when opening a pdf (makes them closeable)
#| rg:     | ripgrep case insensitive
#| sxix:   | mark files with "m", close with "q" -> auto copy fnames to clipboard
#| trans:  | translate from commandline
#| vim:    | only one instance of vim 
#| wp:     | set up a new wallpaper
#| xp:     | class name of window
#------------------------------------------------------------------------------------------------------------
alias cat="bat"      
alias cp="advcp -g"
alias dlm='yt-dlp --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s"'
alias down="cd ~/.down"
alias gcm="git commit -m"
alias gds='data=$(git diff --name-only | fzf -m) && git diff "$data" && echo -n "$data" | xclip'
alias gfetch='echo "[INFO]: changes to be pulled..." && git fetch origin && git diff master..origin/master' 
alias gshow="f_gshow" # 
alias kill='killall -9'
alias ls="ls --color=auto"                                                                            
alias mpv="f_mpv"                                
alias mv="advmv -g"
alias ncdu="ncdu --color dark"                   
alias p="exit"
alias pdf="f_viewPdf"                                                                               
alias q="clear"                                  
alias rg="rg -i"                                 
alias rm="f_moveTrash"
alias img="f_viewImage > /dev/null 2>&1"         
alias nvim="f_nvim_one_instance"            
alias vim="f_nvim_one_instance"             
alias wp="nitrogen ~/media/wallpapers"           
alias x="dtrx -noq"
alias xclip='xclip -selection clipboard'
alias xp='xprop | grep "WM_WINDOW_ROLE\|WM_CLASS" && echo "WM_CLASS(STRING) = \"NAME\", \"CLASS\""' 
alias yay="paru"
alias ssh="f_ssh"
alias listen="ytfzf -tmlN --silent" 
alias lsd="ls -d */ | cut -f1 -d'/'"
alias tree="tree -I '.git|<anotherDir>'"

#-- FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
