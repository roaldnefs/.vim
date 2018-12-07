# .vim

My vim dotfiles, the `.vimrc` is saved to `vimrc`. Run the following
commands to get set up:

```bash
$ cd ~/
$ git clone --recursive https://github.com/roaldnefs/.vim.git .vim
$ ln -sf $HOME/.vim/vimrc $HOME/.vimrc
$ cd $HOME/.vim
$ git submodule update --init
```

Based upon [jessfraz/.vim](https://github.com/jessfraz/.vim).

## Pathogen

The vim dotfiles make used of [Pathogen](https://github.com/tpope/vim-pathogen) runtime path manager to install
plugins and runtime files into their own private directories.

## Updating and Installing

You can use the `Makefile` to run a series of commands.

```bash
$ make help
install                        Sets up symlink for user and root .vimrc for vim.
update-pathogen                Update pathogen.
update-plugins                 Updates all plugins.
update                         Updates pathogen and all plugins.
```

## Personal Configuration

You overwrite the default configuration by creating a `~/.vimrc_personal` file.
