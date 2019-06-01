tmux has-session -t code
if [ $? != 0 ]
then

tmux -2 new-session -s code -n home -d
tmux send-keys -t code:1 'cd ~/' C-m

tmux new-window -n home
tmux new-window -n azure-tools


# playground
tmux send-keys -t code:1 'cd ~/' C-m

# azure-tools project
tmux split-window -h -p 25 -t code:2
tmux split-window -v -p 50 -t code:2.1

tmux send-keys -t code:2.0 'cd ~/go/src/github.com/jeryanders/azure-tools' C-m
tmux send-keys -t code:2.1 'cd ~/go/src/github.com/jeryanders/azure-tools && git log' C-m
tmux send-keys -t code:2.2 'cd ~/go/src/github.com/jeryanders/azure-tools && git status' C-m

fi
tmux attach -t code
