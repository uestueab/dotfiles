# Setup fzf
# ---------
if [[ ! "$PATH" == */home/geeray/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/geeray/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/geeray/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/geeray/.fzf/shell/key-bindings.zsh"
