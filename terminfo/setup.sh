#!/usr/bin/env bash

mkdir -p $HOME/.terminfo
tic -x -o $HOME/.terminfo tmux.terminfo
tic -x -o $HOME/.terminfo tmux-256color.terminfo
tic -x -o $HOME/.terminfo xterm-256color.terminfo
tic -x -o $HOME/.terminfo screen-256color.terminfo
