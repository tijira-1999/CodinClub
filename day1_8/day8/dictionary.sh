#!/bin/bash

declare -A sounds

sounds[dog]="bark"
sounds[cow]="mm"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo "Animals" ${!sounds[@]}
echo "Animal sounds" ${sounds[@]}
echo "Number" ${#sounds[@]}
echo "dog sound" ${sounds[dog]}
