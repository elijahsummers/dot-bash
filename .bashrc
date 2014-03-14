# I only use bash currently, so I'm being lazy and sticking everything here.

# Turn off annoying ansible message format.
export ANSIBLE_NOCOWS=1

# Add RVM to PATH for scripting
PATH=$PATH:$HOME/.rvm/bin
# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Workspace (wksp) setup
if [[ -x "$HOME/wksp/wksp" ]] ; then
	PATH="$PATH:$HOME/wksp"
	[[ -r "$HOME/wksp/wksp-completion.sh" ]] && source "$HOME/wksp/wksp-completion.sh"
fi

# ghar setup
if [[ -x "$HOME/ghar/bin/ghar" ]] ; then
	PATH="$PATH:$HOME/ghar/bin"
	[[ -r "$HOME/ghar/ghar-bash-completion.sh" ]] && source "$HOME/ghar/ghar-bash-completion.sh"
fi
