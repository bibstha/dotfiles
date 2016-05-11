# Path to Oh My Fish install.
set -gx OMF_PATH "/Users/bibek/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/Users/bibek/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

if test -d /usr/local/share/chruby
  source /usr/local/share/chruby/chruby.fish
  source /usr/local/share/chruby/auto.fish
end

if test -d /Applications/Postgres.app/Contents/Versions/9.4/bin
  set -gx PATH $PATH /Applications/Postgres.app/Contents/Versions/9.4/bin
end

set -gx PATH /usr/local/sbin $PATH

set -gx JRUBY_OPTS --dev

set -gx EDITOR /usr/local/bin/vim
