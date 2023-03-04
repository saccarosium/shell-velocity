# Shell Velocity

A portable notational velocity for your shell written in `bash`.

## Feauteres

* Removes cognitive load by combining the note creation and note searching
* Customizable (use your preffered fuzzy finder or file picker; see [tested pickers](https://github.com/saccarosium/shell-velocity/wiki/Tested-Pickers))
* Uses wather editor you want (via the `EDITOR` enviroment variable)
* Portable (runs everywhere bash run, even on the preinstalled one on OSX)
* Minimal (only requires bash and a picker of your choice)

## Dependencies

* `bash 3.2+`
* UNIX commands
* [`fzf`](https://github.com/junegunn/fzf) or your favorite picker (e.g. fzy, rofi, dmenu, etc)

## Installation

Make sure that `~/.local/bin` is in your `PATH`.

```bash
mkdir -p ~/.local/bin
curl <url> -o ~/.local/bin
chmod +x ~/.local/bin/shv
```

## Usage

```bash
shv # select a note
shv tags # list all notes with specific tag
shv diary <yesterday|today|tomorrow> # edit selected date note
shv mv # rename note and optionaly update markdown links to the note
```

## Customization

```bash
# Path to notes
export SHV_PATH="$HOME/Documents/notes"

# Exention used for the notes
SHV_EXT="md"

# Picker used to select notes
export SHV_PICKER="fzf --ansi --print-query --bind=ctrl-g:print-query"
```
