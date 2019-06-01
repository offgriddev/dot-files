tmux has-session -t code
if [ $? != 0 ]
then

tmux -2 new-session -s code -n home -d
tmux send-keys -t code:1 'cd ~/' C-m

tmux new-window -n home
tmux new-window -n api
tmux new-window -n ui
tmux new-window -n rust


# playground
tmux send-keys -t code:1 'cd ~/' C-m

# janusApi
tmux split-window -h -p 25 -t code:2
tmux split-window -v -p 50 -t code:2.1

tmux send-keys -t code:2.0 'japi && nvim' C-m
tmux send-keys -t code:2.1 'japi && git log' C-m
tmux send-keys -t code:2.2 'japi && git status' C-m

#janusUi
tmux split-window -h -p 25 -t code:3
tmux split-window -v -p 50 -t code:3.1

tmux send-keys -t code:3.0 'jui && nvim' C-m
tmux send-keys -t code:3.1 'jui && git log' C-m
tmux send-keys -t code:3.2 'jui && git status' C-m

fi
tmux attach -t code
