# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

set -gx OMF_CONFIG "$HOME/.config/omf"

# Chruby
if test -d /usr/local/share/chruby
  source /usr/local/share/chruby/chruby.fish
  source /usr/local/share/chruby/auto.fish
end

# Gnu Coreutils
if test -d /usr/local/opt/coreutils/libexec/gnubin
  set -gx PATH /usr/local/opt/coreutils/libexec/gnubin $PATH
end

# Common env variables
set -gx JRUBY_OPTS --dev
set -gx EDITOR /usr/local/bin/vim
set -gx GOPATH /Users/bis/Projects/go
set -gx PATH /usr/local/sbin $PATH $GOPATH/bin

# this function may be required
function fish_title
  true
end

