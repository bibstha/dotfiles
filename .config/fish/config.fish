# Path to Oh My Fish install.
set -gx OMF_PATH $HOME/.local/share/omf

# Customize Oh My Fish configuration path.
set -gx OMF_CONFIG $HOME/.config/omf

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish
source $HOME/.config/omf/alias.fish

if test -d /usr/local/share/chruby
  source /usr/local/share/chruby/chruby.fish
  source /usr/local/share/chruby/auto.fish
end

if test -d /Applications/Postgres.app/Contents/Versions/9.4/bin
  set -gx PATH $PATH /Applications/Postgres.app/Contents/Versions/9.4/bin
end

if test -d /usr/local/opt/coreutils/libexec/gnubin
  set -gx PATH /usr/local/opt/coreutils/libexec/gnubin $PATH
end

set -gx JRUBY_OPTS --dev

set -gx EDITOR /usr/local/bin/vim

set -gx GOPATH /Users/bis/Projects/go

set -gx PATH /usr/local/sbin $PATH $GOPATH/bin

# this function may be required
function fish_title
  true
end

