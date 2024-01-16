# 🚀 Shell Velocity

A portable [notational velocity][NV] for your shell written in POSIX shell.

https://user-images.githubusercontent.com/96259932/223130698-f870c17c-f307-40c0-b48f-050173bf3d18.mp4

---

* [Features](#features)
* [Dependencies](#dependencies)
* [Install](#install)
* [Uninstall](#uninstall)
* [Usage](#usage)
* [Philosophy](#philosophy)

## Features

* Removes cognitive load by combining the note creation and note searching
* Customizable (use your preferred fuzzy finder or file picker. 
  * See [tested pickers](docs/tested-pickers.md)
* Portable (runs on every POSIX compatible OS)
* Minimal (only a POSIX shell and the picker of your choice)
* Nonintrusive (use markdown by default, but works also with your preferred markup languages such as: [org][ORG], [neorg][NORG], [rst][RST], [adoc][ADOC], etc)

## Dependencies

* POSIX compliant shell
* POSIX utils
* [`fzf`][FZF] or your favorite picker (e.g. fzy, rofi, dmenu, etc)

## Install

> **Important**
> Make sure that `~/.local/bin` is in your `PATH`.

```bash
sh -c "$(printf '%s\n install\n' "$(curl -fs 'https://raw.githubusercontent.com/saccarosium/shell-velocity/main/install.sh')")"
```

## Uninstall

```bash
sh -c "$(printf '%s\n remove\n' "$(curl -fs 'https://raw.githubusercontent.com/saccarosium/shell-velocity/main/install.sh')")"
```

## Usage

If you used the install script just run `man shv`. If you didn't you can read the documentation at `docs/shv.md`.

## Philosophy

> The reasoning behind Notational Velocity's present lack of multi-database support is that storing notes in separate databases would 1) Require the same kinds of decisions that category/folder-based organizers force upon their users (e.g., "Is this note going to be work-specific or home-specific?"), and 2) Defeat the point of instantaneous searching by requiring, ultimately, the user to repeat each search for every database in use.
> 
> -- quote,scrod creator of notational_velocity

By providing a default directory, we offer (one) fix to the first issue.

By searching the whole set of directories simultaneously, we handle the second.

It also handles Notational Velocity's issue with multiple databases. UNIX does not allow repeated filenames in the same folder, but often the parent folder provides context, like in `workout/TODO.md` and `coding/TODO.md`.


[NV]: https://notational.net/
[ORG]: https://orgmode.org/
[RST]: https://docutils.sourceforge.io/rst.html
[FZF]: https://github.com/junegunn/fzf
[NORG]: https://github.com/nvim-neorg/neorg
[ADOC]: https://asciidoc.org/
