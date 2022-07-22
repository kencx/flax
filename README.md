# flax
flaxly create, list and edit markdown notes

```bash
# create file with comment
$ flax new "hello" -c "Hello world"

# create new subdirectory
$ flax new "go/"

# create new file within existing subdirectory
$ flax new "go/hello"

# list all files
$ flax list

# list all files in a subdirectory
$ flax list go

# edit file
$ flax edit "hello"
```

These notes are placed in your directory of choice. It is compatible with Obsidian.md, by setting the default location to your Obsidian vault with the `DEFAULT_LOCATION` env variable

```ini
$ DEFAULT_LOCATION="./hugo/" flax new "hello"
```

Notes can be copied and moved to different locations. For example, copying an Obisidian note to Hugo for a blog post

```bash
$ flax cp "go/hello" hugo
$ flax cp "go/hello" hugo "notes/go/hello"
```

Hugo's location is set with the `HUGO_LOCATION` env variable

```ini
$ HUGO_LOCATION="./hugo/" flax cp "go/hello" hugo
```

We can include default and custom Hugo [metadata](https://gohugo.io/content-management/front-matter/) to prepend to the copy

```ini
title:
date:
lastmod:
```
