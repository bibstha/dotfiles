abbr_set

set PATH $HOME/bin /usr/local/opt/coreutils/libexec/gnubin /usr/local/opt/llvm@4/bin $PATH
set NVIM_TUI_ENABLE_TRUE_COLOR 1
set TDD 0
set EDITOR nvim
set HOMEBREW_GITHUB_API_TOKEN 6a7f679ab567cc4bc52507dcf5241a4b49a4f8f1
set -x PKG_CONFIG_PATH /usr/local/opt/shopify-imagemagick@6/lib/pkgconfig

if test -f /opt/dev/dev.fish
  source /opt/dev/dev.fish
end
set -g fish_user_paths "/usr/local/opt/imagemagick@6/bin" $fish_user_paths

set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

# test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

