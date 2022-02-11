## Editing Contents

If you want to edit a value without starting over, you can edit the
hex dump and then reverse it back into a file like this:

```console
$ xxd file.imretro > hexdump
$ nano hexdump
$ xxd -r hexdump > file.imretro
```

Of course, you don't have to use `nano`. Any text editor will work :)

### Separating The Header And Pixels

The above example will hexdump the whole file, so here's a way to edit
just the pixels.

Let's base this off of [the first tutorial][tutorial-1].
We know that we have 11 bytes before the pixels. We'll output those 11 bytes
in a separate `header` file.

```console
$ xxd -l 11 -c1 file.imretro > header
```

Then, we'll output the remaining bytes in a `pixels` file. We seek
11 bytes forward to skip what we already output in `header`.

```console
$ xxd -s +11 -c1 file.imretro > pixels
```

You can make your changes by editing `pixels`. When you're finished,
you can concatenate the files and revert the hexdump.

```console
$ cat header pixels | xxd -r -c1 > newfile.imretro
```

We used `-c1` to make the column width 1 byte. This makes
it easier to concatenate the two hex dumps without having to worry
about irregular column widths.

[tutorial-1]: ../1
