# :rocket: Shell Velocity

A portable notational velocity for your shell written in POSIX shell.

https://user-images.githubusercontent.com/96259932/223130698-f870c17c-f307-40c0-b48f-050173bf3d18.mp4

## Feauteres

* Removes cognitive load by combining the note creation and note searching
* Customizable (use your preffered fuzzy finder or file picker; see [tested pickers](https://github.com/saccarosium/shell-velocity/wiki/Tested-Pickers))
* Uses wather editor you want (even [Visual Studio Code](https://github.com/saccarosium/shell-velocity/wiki/Visual-Studio-Code)!)
* Portable (runs on every POSIX compatible OS, see [tested OSes](https://github.com/saccarosium/shell-velocity/wiki/Tested-OSes))
* Minimal (only a POSIX shell and the picker of your choice)
* Unintrusive (use your preferred markup language, markdown is the default)

## Dependencies

* POSIX compliant shell
* POSIX utils
* [`fzf`](https://github.com/junegunn/fzf) or your favorite picker (e.g. fzy, rofi, dmenu, etc)

## Installation

Make sure that `~/.local/bin` is in your `PATH`.

```bash
mkdir -p ~/.local/bin
curl https://raw.githubusercontent.com/saccarosium/shell-velocity/main/shv -o ~/.local/bin/shv
chmod +x ~/.local/bin/shv
```

## Usage

```bash
shv # select a note
shv tags # list all notes with specific tag
shv diary # select a note from diary folder
shv <today | t> # edit todays diary note
shv <tomorrow | tom | tm> # edit tomorrow diary note
shv <yesterday | ye | y> # edit yesterday diary note
```

## Customization

> **Note**
> The values of the variables below are the defaults.

> **Warning**
> All the regex used here needs to be POSIX compatible.

```bash
# If you want that your editor pwd is in the SHV_PATH
export SHV_AUTO_CD=true

# Path to notes
export SHV_PATH="$HOME/Documents/notes"

# Path to diary
export SHV_DIARY_PATH="$SHV_PATH/diary"

# Regex used for searching tags
# By default markdown tags '#tag'
export SHV_TAG_EXPR="#[a-z0-9_]+"

# String passed to 'date' command.
# For see how to modify this value check 'man date'
export SHV_DATE_FMT="%Y-%m-%d"

# Exention used for the notes
export SHV_EXT="md"

# Picker used to select notes
export SHV_PICKER="fzf --ansi --print-query --bind=ctrl-g:print-query"
```
