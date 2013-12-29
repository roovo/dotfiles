# roovo's dotfiles

The aim is to make these portable across both OSX and ubuntu which are the two
places I seem to find myself working in most often.

There's a Vagrantfile in there too for easy testing in ubuntu.

## install

Run this:

```sh
git clone https://github.com/roovo/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./scripts/link_dotfiles
./scripts/run_installs
```

`link_dotfiles` will symlink the appropriate files in `.dotfiles` to your
home directory.  Everything is configured and tweaked within `~/.dotfiles`.

`run_installs` runs all the `install.sh` scripts.

Or to do all this is one go:

```sh
source <(curl -sSL https://raw.github.com/roovo/dotfiles/master/scripts/bootstrap)
```

## topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `script/bootstrap`.

## components

There's a few special files in the hierarchy.

- **bin/**: The `bin/` directory will linked to a `bin` directory in your home
  directory (which is included in your `$PATH`).
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

## thanks

The install philosophy, bootstrap script (and much of this readme) is taken
from Zach Holman's most excellent set of
[dotfiles](https://raw.github.com/holman/dotfiles). Most of the vim stuff was
inspired by watching Gary Bernhardt's [Destroy All Software screencasts]
(https://www.destroyallsoftware.com/screencasts), copying from his [dotfiles]
(https://github.com/garybernhardt/dotfiles) - and actaully understanding most
of what's in there :)

## todo

- autotest
- tmux
- run_tags / ctags
- powerline in vim
