#!/bin/zsh

stack setup || { echo "setup failed"; exit 1 }
stack build || { echo "build failed"; exit 1 }

mkdir -p charts data || { echo "mkdir failed"; exit 1 }

stack exec graphic
