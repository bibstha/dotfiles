if not set -q fish_user_abbreviations
  abbr_set
end

end

set PATH $HOME/bin /usr/local/opt/coreutils/libexec/gnubin $PATH

fish_vi_key_bindings
