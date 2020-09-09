# .vim

My vim dotfiles, the `.vimrc` is saved to `vimrc`. Run the following
commands to get set up:

```bash
$ cd ~/
$ git clone --recursive https://github.com/roaldnefs/.vim.git .vim
$ cd $HOME/.vim
$ make install
```

Make sure you don't have a `$HOME/.vimrc` file present, as this takes precedence over `$HOME/.vim/vimrc`

Based upon [jessfraz/.vim](https://github.com/jessfraz/.vim).

## Pathogen

The vim dotfiles make used of [Pathogen](https://github.com/tpope/vim-pathogen) runtime path manager to install
plugins and runtime files into their own private directories.

## Updating and Installing

You can use the `Makefile` to run a series of commands.

```bash
$ make help
install                        Installs plugins, sets up symlink for user .vimrc for vim.
install-root                   Sets up symlink for root .vimrc for vim.
update-pathogen                Update pathogen.
update-plugins                 Updates all plugins.
update                         Updates pathogen and all plugins.
```

## Personal Configuration

You overwrite the default configuration by creating a `~/.vimrc_personal` file.
