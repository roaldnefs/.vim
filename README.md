# .vim

My vim dotfiles, the `.vimrc` is saved to `vimrc`. Run the following
commands to get set up:

```bash
cd ~/
git clone --recursive https://github.com/roaldnefs/.vim.git .vim
ln -sf $HOME/.vim/vimrc $HOME/.vimrc
cd $HOME/.vim
git submodule update --init
```
