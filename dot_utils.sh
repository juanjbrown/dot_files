#!/bin/bash

projects() {
    # find directory
    selected=`find ~/projects -maxdepth 4 -mindepth 1 -type d | fzf`
    if [[ ! -n $selected ]]; then
        echo "Nothing selected"
        return
    fi

    # change to directory
    cd $selected

    # activate venv if found
    if [ -f venv/bin/activate ]; then
        . venv/bin/activate
    fi
}
