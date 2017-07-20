# dotfiles bootstrapping

```shell
git clone --bare git@github.com:coyotwill/dotfiles.git $HOME/.dotfiles.git

alias dot='git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME'
dot config --local status.showUntrackedFiles no
```

# Optional
```shell
dot config --local user.email $USER@users.noreply.github.com

dot config --local core.sparseCheckout true
cat > $HOME/.dotfiles.git/info/sparse-checkout << EOF
.*
!README.md
EOF

# Might need to 
echo ".dotfiles.git" >> .gitignore
```

# Finally
```shel
dot checkout
```
