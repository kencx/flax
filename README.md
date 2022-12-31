# flax

flax is an opinionated wrapper for [Hugo](https://gohugo.io/).

With flax, I can quickly:
- list and access Hugo documents
- add new Hugo documents based on custom archetypes

from anywhere in my filesystem.

## Installation

``` bash
$ make install
```

flax has the following dependencies:
- hugo
- fzf
- sed
- which

## Usage

```
usage: flax [subcommand] [filename]

  Subcommand:
    help     Returns help
    version  Return version
    ls       List notes
    new      Create new note
    blog     Create new Hugo doc based on archetypes
```

```
usage: flax blog [archetype] [dir/]foo

  Supported archetypes: posts notes books

  Examples:
    flax blog post hello-world
    flax blog note bash/functions
```

```bash
# list all documents
$ flax ls

# list hugo drafts in foo/bar
$ flax ls draft foo/bar

# create empty foo.md
$ flax new foo

# create empty foo/bar.md
# flax new foo/bar

# create new hugo post `foo.md`
$ flax blog post foo

# create new hugo note `bar.md`
$ flax blog note bar

# create new hugo note `foo/bar.md`
$ flax blog note foo/bar
```

## Configuration

```bash
EDITOR="nvim"

# must contain Hugo config file `config.toml`
HUGO_DIR="path/to/hugo/dir"
CONTENT_DIR="$HUGO_DIR/content"

# custom supported archetypes
ARCHETYPES=(posts notes books projects)
DEFAULT_ARCHETYPE="notes"

FZF_CMD=(fzf -m --ansi --cycle --delimiter='/' "--with-nth=-3,-2,-1")
```
