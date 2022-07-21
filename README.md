# quick
Quickly create, list and edit markdown notes

```bash
# create file with comment
$ quick new "hello" -c "Hello world"

# create new subdirectory
$ quick new "go/"

# create new file within existing subdirectory
$ quick new "go/hello"

# list all files
$ quick list

# list all files in a subdirectory
$ quick list go

# edit file
$ quick edit "hello"
```

These notes are placed in your directory of choice. It is compatible with Obsidian.md, by setting the default location to your Obsidian vault with the `DEFAULT_LOCATION` env variable

```ini
$ DEFAULT_LOCATION="./hugo/" quick new "hello"
```

Notes can be copied and moved to different locations. For example, copying an Obisidian note to Hugo for a blog post

```bash
$ quick cp "go/hello" hugo
$ quick cp "go/hello" hugo "notes/go/hello"
```

Hugo's location is set with the `HUGO_LOCATION` env variable

```ini
$ HUGO_LOCATION="./hugo/" quick cp "go/hello" hugo
```

We can include default and custom Hugo [metadata](https://gohugo.io/content-management/front-matter/) to prepend to the copy

```ini
title:
date:
lastmod:
```
