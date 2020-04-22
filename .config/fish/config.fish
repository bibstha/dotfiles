set TDD 0
set EDITOR nvim
set HOMEBREW_GITHUB_API_TOKEN 6a7f679ab567cc4bc52507dcf5241a4b49a4f8f1

if test -f /opt/dev/dev.fish
  source /opt/dev/dev.fish
end

set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

# test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

function installpkgs
  brew update
  brew install fzf neovim fish tmux ripgrep git ctags \
    fd go curl mysql youtube-dl curl cmake docker gdb \
    wget markdown gh hub htop reattach-to-user-namespace \
    jq sqlite kubernetes-cli wrk
end

function refreshsystem
  vim +PlugUpdate +qall
  brew update
  brew upgrade fzf neovim fish tmux ripgrep git ctags \
    fd go curl mysql youtube-dl curl cmake docker gdb \
    wget markdown gh hub htop reattach-to-user-namespace \
    jq sqlite kubernetes-cli wrk
end
