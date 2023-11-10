# shv(1)

## Name

shv - shell velocity

## Synopsis

**shv** [_FLAGS_] [_SUBCOMMANDS_] [_ARGS_]

## Flags

This modify values that normally you will set in an enviroment variable.

**--auto-cd**, **--no-auto-cd**

: see _SHV_AUTO_CD_

**-p**, **--path**

: see _SHV_PATH_

**-j**, **--journal-path**

: see _SHV_JOURNAL_PATH_

**-i**, **--ignore**

: see _SHV_IGNORE_

**-c**, **--normalize-ch**

: set _SHV_NORMALIZE_CH_

**-P**, **--picker**

: see _SHV_PICKER_

**-e**, **--ext**

: see _SHV_EXT_

## Subcommands

**j**, **journal**

: Searches in your _SHV_JOURNAL_PATH_ for notes, and uses your picker to select what daily file to choose.

**g**, **grep**

: grep all the files in your _SHV_PATH_. If no match is found, or you use the keybinding to create a note (if your _SHV_PICKER_ support keybindings), a new note will be created.

**sel**, **select**

: Select one, or more, of your files by filename (a more traditional fuzzy search through files).

**t**, **today**, **tm**, **tomorrow**, **y**, **yesterday**

: Get the corresponding daily note associated with the day. If passed a label, it will be append it to the filename.

## Enviroment

T, e script is configured and customized through enviroment variables.

**SHV_AUTO_CD**

: specify if auto cd to _SHV_PATH_ when edit file (default: `true`)

**SHV_DATE_FMT**

: format used by the date command (default: `%Y-%m-%d`)

  export SHV_DATE_FMT="%d-%m-%Y"

**SHV_DEFAULT_CMD**

: default command that run when not subcommand is specified (default: `select`)

  export SHV_DEFAULT_CMD="select"

**SHV_JOURNAL_PATH**

: path to journal notes (default: `$SHV_PATH/journal`)

**SHV_EXT**

: Your primary extention for when you create new notes. (default: `md`)

  export SHV_EXTS="markdown rmd txt"

**SHV_IGNORE**

: space separated list for ignored directories and files. (default: `./.obsidian/* ./.git/* ./*.pdf`)

  export SHV_IGNORE="./.git/* ./pdfs/*"

**SHV_PATH**

: path to notes (default: `$XDG_DATA_HOME/notes`)

**SHV_PICKER**

: fuzzy finder/filter used to select notes (default: `fzf -m --ansi --print-query --bind=alt-enter:print-query`)


## EXAMPLES

- Open today's note with label *_work_*

  shv today work
