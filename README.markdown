# roovo's dotfiles

The aim is to make these portable across both OSX and ubuntu which are the two
places I seem to find myself working in most often.

## install

Run this:

```sh
git clone https://github.com/roovo/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

## components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

## thanks

The istall philosophy and script is taken from Zach Holman's most excellent set
of [dotfiles](https://raw.github.com/holman/dotfiles). Most of the vim stuff was
inspired by watching Gary Bernhardt's Destroy All Software screencasts, copying
from his [dotfiles](https://github.com/garybernhardt/dotfiles) - and actaully
understanding most of what's in there :)
