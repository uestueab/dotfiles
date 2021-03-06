#!/bin/bash
#
#

function f_getSource(){
    sources=(
        reddit
        onlyfans
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


    bindingService=""

    if [ $# -eq 0 ]
    then 
        #No model provided:
        # => Select and download existing model

        model=$(ls -d $targetDir/*/ | cut -f6 -d'/' | fzf -m --prompt="select model:")
        bindingService=$(grep "$model" "$binding" | cut -f2 -d:)

    else
        #Model provided:
        model="$1"                                      
        bindingService=""

        if grep -q "$model" "$binding"; then
            bindingService=$(grep "$model" "$binding" | cut -f2 -d:)
        else
            bindingService=$(f_getSource)               
            #The model was provided but doesn't exist in the binding file => write to binding
            echo "$model:$bindingService"  >> "$binding" 
        fi


    fi

    service=$(f_getSource "$bindingService") # the service url (http)
    gallery-dl "$service/$model" 
}
