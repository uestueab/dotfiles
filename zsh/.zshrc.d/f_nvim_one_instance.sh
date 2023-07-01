#/bin/bash

serverPath=/tmp/nvim.pipe

function f_nvim_one_instance() {
    #if there is no nvim process already running...
    if ! pgrep -x "nvim"; then

        notify-send 'test' "$@"

        #save current workspace pre nvim launch
        #so we can change to it right after! 
        CWS=$(i3-msg -t get_workspaces | jq '.[] | select(.focused==true).name')

        i3-msg "move container to workspace 3" > /dev/null 2>&1
        i3-msg "workspace 3" > /dev/null 2>&1   #move focus to nvim workspace

        if (( $# < 1 )); then
            # we just ran nvim without any arguments at all
            # tmpfile=$(mktemp /tmp/temp_XXXXXX.txt)
            # command nvim --listen "$serverPath" "$tmpfile" 
            command nvim --listen "$serverPath" -c ":FzfLua oldfiles" #lists last edited files
        else
            # we want to edit some real file(s). Remove the first empty buffer
            command nvim --listen "$serverPath" "$@"
        fi

        #wait for nvim process to finish
        wait

        #go back to the workspace pre nvim launch..
        i3-msg "move container to workspace $CWS" > /dev/null 2>&1
        i3-msg "workspace $CWS" >/dev/null 2>&1

    #there is a nvim process running
    else
        notify-send 'test' "$@"
        command nvim --server "$serverPath" --remote-tab "$@"
        i3-msg "workspace 3" > /dev/null 2>&1   #switch to workspace
        exit
    fi
}
