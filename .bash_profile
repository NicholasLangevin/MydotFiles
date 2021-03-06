# ============= Configuration =============

# echo "Loading ${HOME}/.bash_profile"
source ~/.profile # get my PATH setup 
source ~/.bashrc  # get my Bash aliases

if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    tmux attach -t default || tmux new -s default
fi
