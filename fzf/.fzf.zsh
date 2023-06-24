# Setup fzf
# ---------
if [[ ! "$PATH" == */home/geeray/.fzf/bin* ]]; then
    PATH="${PATH:+${PATH}:}/home/$(whoami)/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/$(whoami)/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/$(whoami)/.fzf/shell/key-bindings.zsh"
