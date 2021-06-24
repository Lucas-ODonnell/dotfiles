Installing dotfiles to another system

It just needs two shell commands before fetching the remote repo.

echo 'alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"' >> $HOME/.bashrc
source ~/.bashrc
echo ".dotfiles.git" >> .gitignore
git clone --bare https://www.github.com/username/repo.git $HOME/.dotfiles.git
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
