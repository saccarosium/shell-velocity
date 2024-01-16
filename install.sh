BIN_LOC="$HOME/.local/bin"
SHV_LOC="$BIN_LOC/shv"
MAN_LOC='/usr/share/man/man1/shv.1'
SHV_URL='https://raw.githubusercontent.com/saccarosium/shell-velocity/main/shv'
MAN_URL='https://raw.githubusercontent.com/saccarosium/shell-velocity/main/docs/shv.1'
INSTALL_SCRIPT_URL='https://raw.githubusercontent.com/saccarosium/shell-velocity/main/install.sh'

die() { printf '\033[31m%s.\n\033[m' "$1" >&2 && exit 1; }
success() { printf '\033[32m%s\n\033[m' "$1"; }
download() { curl -fs "$1" -o "$2"; }

prompt() {
    success "$(curl -sf "$INSTALL_SCRIPT_URL")"
    printf 'Do you want to execute the following script? [Y/n]: '
    read -r ans
    { [ "$ans" = 'N' ] || [ "$ans" = 'n' ]; } && exit
}

install() {
    prompt
    [ -f "$SHV_LOC" ] && die "shv appears to be already installed at $SHV_LOC"
    success "shv will be installed at: $SHV_LOC"
    mkdir -p "$BIN_LOC"
    download "$SHV_URL" "$SHV_LOC"
    chmod +x "$SHV_LOC"
    [ -f "$MAN_LOC" ] && exit
    success "shv manual will be installed at: $MAN_LOC"
    download "$MAN_URL" '/tmp/shv.1'
    sudo cp '/tmp/shv.1' "$MAN_LOC"
}

remove() {
    prompt
    [ -f "$SHV_LOC" ] && rm "$SHV_LOC"
    [ -f "$MAN_LOC" ] && sudo rm "$MAN_LOC"
    success "shv has been removed"
}
