# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

export EDITOR="/usr/bin/vim"
# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
# Extra path stuff
export PATH="$PATH:$HOME/Applications"
export SSH_AUTH_SOCK=/home/nat/.var/app/com.bitwarden.desktop/data/.bitwarden-ssh-agent.sock

export PATH=$PATH:/usr/local/go/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias venvactivate="source .venv/bin/activate"
eval "$(zoxide init bash)"
alias cd=z

# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/nat/.lmstudio/bin"
# End of LM Studio CLI section

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"
. "$HOME/.cargo/env"
