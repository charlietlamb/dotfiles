# Prevent path_helper from messing up PATH inside tmux
if [ -x /usr/libexec/path_helper ]; then
  PATH=""
  eval `/usr/libexec/path_helper -s`
fi

# Homebrew environment
eval "$(/opt/homebrew/bin/brew shellenv)"

# NVM (Node Version Manager)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # Loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # Loads nvm bash_completion

# JetBrains Toolbox
export PATH="$PATH:/Users/charlielamb/Library/Application Support/JetBrains/Toolbox/scripts"

# Python 3.12 (ensure this comes **after** path_helper to take priority)
PATH="/Library/Frameworks/Python.framework/Versions/3.12/bin:$PATH"
export PATH
