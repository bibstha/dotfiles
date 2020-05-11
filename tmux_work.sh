#! /bin/bash


WORKDIR=/Users/bibekshrestha/src/github.com
tmux new-session -d -s shopify -n Notes 'notes'

# -d in background
# -n name of the Pane
# -c current directory
tmux new-window -d -n ProxySQL -c $WORKDIR/shopify/shopify-proxysql
# -v vertical split
# -t target pane to split
# -f full length
tmux split-window -d -v -t ProxySQL -c $WORKDIR/shopify/shopify-proxysql
tmux split-window -d -h -f -t ProxySQL -c $WORKDIR/shopify/shopify-proxysql

tmux new-window -d -n Proctor -c $WORKDIR/shopify/proctor
tmux split-window -d -v -t Proctor -c $WORKDIR/shopify/proctor
tmux split-window -d -h -f -t Proctor -c $WORKDIR/shopify/proctor

tmux new-window -d -n Core -c $WORKDIR/shopify/shopify
tmux split-window -d -v -t Core -c $WORKDIR/shopify/shopify
tmux split-window -d -h -f -t Core -c $WORKDIR/shopify/shopify

tmux new-window -d -n Scratch
tmux attach -t shopify
