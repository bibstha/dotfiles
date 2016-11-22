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

