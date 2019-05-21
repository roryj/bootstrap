# run zsh instead of bash
if test -t 1; then
    # ...start zsh
    exec zsh
fi
