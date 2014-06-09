# homebrew prefers this order for PATH
export PATH=/usr/local/bin:$PATH

# homebrew's bash_completion offers a lot of good stuff
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
