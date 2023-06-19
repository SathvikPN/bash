#!/usr/bin/bash

export ARG1=${1:-"default_arg1"}
export COUNT=${1:-"10"}

# Utilities

SHOUT() { echo "$0: $*" >&2; }
DIE() { SHOUT "${@:2} ($1)"; exit $1; }
TRY() { "$@" || DIE $? "cannot $*"; }

# TRY cd directory/

TIMER() {
    for ((i=$1; i>=0; i--)) 
    do 
        echo "Remaining $i seconds"
        sleep 1;
        printf '\e[A\e[K';
    done
}

TIMER 5
