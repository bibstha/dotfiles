# from https://github.com/jcelliott/dotfiles/blob/master/.config/fish/abbreviations.fish
# Set fish user abbreviations
abbr_add 'dkc=docker-compose'
#
# More git abbreviations can be borrowed from 
# https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/git/git.plugin.zsh#L41
abbr_add 'g=git'
abbr_add 'gst=git status'
abbr_add 'gc=git commit -v'
abbr_add 'glg=git log-detail'
abbr_add 'glb=git log-branch'
abbr_add 'glgs=git log-summary'
abbr_add 'ga=git add'
abbr_add 'gap=git add -p'

abbr_add 'glgg=git log --graph'
abbr_add 'glgga=git log --graph --decorate --all'
abbr_add 'glgm=git log --graph --max-count=10'
abbr_add 'glo=git log --oneline --decorate'
abbr_add "glol=git log --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
abbr_add "glola=git log --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all"
abbr_add 'glog=git log --oneline --decorate --graph'
abbr_add 'gloga=git log --oneline --decorate --graph --all'

abbr_add 'gcm=git checkout master'
abbr_add 'gch=git checkout'
abbr_add 'gco=git checkout'
abbr_add 'gcb=git checkout -b'
abbr_add 'gd=git diff'
abbr_add 'gdc=git diff --cached'
abbr_add 'gds=git diff --stat'

abbr_add 'gfom=git fetch origin master'
abbr_add 'grfh=git rebase FETCH_HEAD'
abbr_add 'grhh=git reset --hard HEAD'

abbr_add 'gmm=git merge master'
abbr_add 'gba=git branch -a'

abbr_add 'ggpull=git pull'
abbr_add 'ggpush=git push'
abbr_add 'gpd=git push --dry-run'



abbr_add 'v=vim'
abbr_add 'ev=vim ~/.vimrc'
abbr_add 'et=vim ~/.tmux.conf'
abbr_add 'efc=vim ~/.config/fish/config.fish'
abbr_add 'efa=vim ~/.config/fish/abbreviations.fish'
abbr_add 'eff=vim ~/.config/fish/functions'
abbr_add 'ef=vim ~/.config/fish'
abbr_add 'efv=vim ~/.config/nvim/init.vim'

abbr_add 'sf=source ~/.config/fish/config.fish'

abbr_add 'ber=bundle exec rake'
abbr_add 'be=bundle exec'
