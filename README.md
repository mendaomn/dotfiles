# dotfiles

## Setup
```bash
git init --bare $HOME/.dotfiles
dotfiles remote add origin git@github.com:mendaomn/dotfiles.git
```

## Configuration
```bash
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config status.showUntrackedFiles no
```

## Usage
```bash
dotfiles status
dotfiles add .gitconfig
dotfiles commit -m 'Add gitconfig'
dotfiles push
```

## Replication
```bash
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/mendaomn/dotfiles.git dotfiles-tmp
rsync --recursive --verbose --exclude '.git' dotfiles-tmp/ $HOME/
rm --recursive dotfiles-tmp
```
