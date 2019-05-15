# from https://github.com/jcelliott/dotfiles/blob/master/.config/fish/abbreviations.fish
# Set fish user abbreviations
# dev commands
abbr -a dvu dev up
abbr -a dvd dev down
abbr -a dvs dev cd shopify

abbr -a dkc docker-compose
#
# More git abbreviations can be borrowed from 
# https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/git/git.plugin.zsh#L41
abbr -a g git
abbr -a gst git status
abbr -a gc git commit -v
abbr -a glg git log-detail
abbr -a glb git log-branch
abbr -a glgs git log-summary
abbr -a ga git add
abbr -a gap git add -p

abbr -a glgg git log --graph
abbr -a glgga git log --graph --decorate --all
abbr -a glgm=git log --graph --max-count 10
abbr -a glo git log --oneline --decorate
abbr -a glol git log --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
abbr -a glola git log --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all
abbr -a glog git log --oneline --decorate --graph
abbr -a gloga git log --oneline --decorate --graph --all

abbr -a gcm git checkout master
abbr -a gch git checkout
abbr -a gco git checkout
abbr -a gcb git checkout -b
abbr -a gd git diff
abbr -a gdc git diff --cached
abbr -a gds git diff --stat

abbr -a gfo git fetch origin
abbr -a gfom git fetch origin master
abbr -a grfh git rebase FETCH_HEAD
abbr -a grhh git reset --hard HEAD

abbr -a gmm git merge master
abbr -a gba git branch -a

abbr -a ggpom git pull origin master
abbr -a ggpull git pull
abbr -a ggpush git push
abbr -a gpd git push --dry-run



abbr -a v vim
abbr -a ev vim ~/.vimrc
abbr -a et vim ~/.tmux.conf
abbr -a efc vim ~/.config/fish/config.fish
abbr -a efa vim ~/.config/fish/abbreviations.fish
abbr -a eff vim ~/.config/fish/functions
abbr -a ef vim ~/.config/fish
abbr -a efv vim ~/.config/nvim/init.vim

abbr -a sf source ~/.config/fish/config.fish

abbr -a ber bundle exec rake
abbr -a be bundle exec
