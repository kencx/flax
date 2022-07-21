# quick
Quickly create, list and edit markdown notes

```bash
# create file with comment
$ quick "hello" -c "Hello world"

# create new subdirectory
$ quick "go/"

# create new file within existing subdirectory
$ quick "go/hello"

# list all files
$ quick list

# list all files in a subdirectory
$ quick list go

# edit file
$ quick edit "hello"
```

These notes are placed in your directory of choice. It is compatible with Obsidian.md, by setting the default location to your Obsidian vault

```ini
[default]
location="./obsidian/"
editor="nvim"
```

Notes can be copied and moved to different locations. For example, copying an Obisidian note to Hugo for a blog post

```bash
$ quick cp "go/hello" hugo
$ quick cp "go/hello" hugo "notes/go/hello"
```

Hugo's location is set with configuration

```ini
[hugo]
location="~/dev/blog/content"
```

We can include default and custom Hugo [metadata](https://gohugo.io/content-management/front-matter/) to prepend to the copy

```ini
[hugo]
location="~/dev/blog/content"

[hugo.metadata]
title:
date:
lastmod:
draft:

[hugo.metadata.custom]
toc:
tags:
```
