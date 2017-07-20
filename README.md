# dotfiles bootstrapping

```shell
git clone --bare git@github.com:coyotwill/dotfiles.git $HOME/.dotfiles.git

alias dot='git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME'
dot config --local status.showUntrackedFiles no
dot config --local user.email $USER@users.noreply.github.com

# Might need to 
echo ".cfg" >> .gitignore

dot checkout
```
