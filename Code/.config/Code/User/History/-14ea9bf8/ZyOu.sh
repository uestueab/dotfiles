#!/bin/bash
#
#

function f_getSource(){
    sources=(
        onlyfans
        reddit
    )
    source=""

    if [ $# -eq 0 ]
    then
        source=$(printf "%s\n" "${sources[@]}" | fzf --prompt="Bind model to source:")
        echo $source
    else
        source="$1"
        url=""
        case "$source" in
            "reddit")
                url="https://www.reddit.com/user"
                ;;
            "onlyfans")
                url="https://coomer.party/onlyfans/user"
                ;;
        esac

        echo $url
    fi
}

function f_coom() {
    targetDir="$HOME/media/.thots"
    binding="$HOME/.config/gallery-dl/binding.txt"

    # Binding:
    #
    # model:<service>       with service being for e.g reddit, onlyfans, ...
    touch "$binding" # create binding file if not exists


    model=""
    bindingService=""

    if [ $# -eq 0 ]     #No model provided: =>Select and download existing model
    then                
        model=$(cat "$binding" | cut -f1 -d: | fzf -m --prompt="select model:")
        bindingService=$(grep "$model" "$binding" | cut -f2 -d:)

    else                #Model was provided:
        model="$1"                                      

        if grep -q "$model" "$binding"; then                            #Check whether provided model exists in binding
            bindingService=$(grep "$model" "$binding" | cut -f2 -d:)    #yes?: =>read the service from binding
        else
            bindingService=$(f_getSource)                               #no?: =>bind the service to the model and persist in file
            echo "$model:$bindingService"  >> "$binding" 
        fi


    fi

    service=$(f_getSource "$bindingService") # the service url (http)
    gallery-dl "$service/$model" 
}
