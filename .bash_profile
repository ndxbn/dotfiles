# .bash_profile

# .profile.d
for D in .profile.d/*
do
    . $D
done

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs

# env
PATH="$HOME/.anyenv/bin:$HOME/bin:$PATH:$HOME/.local/bin"

# anyenv
if [ -x $(type anyenv) ]; then
    eval "$(anyenv init -)"
fi
