BIN_LOC="$HOME/.local/bin"
SHV_URL='https://raw.githubusercontent.com/saccarosium/shell-velocity/main/shv'
SHV_LOC="$BIN_LOC/shv"
INSTALL_SCRIPT_URL='https://raw.githubusercontent.com/saccarosium/shell-velocity/main/install.sh'

die() { printf '\033[31m%s.\n\033[m' "$1" >&2 && exit 1; }
success() { printf '\033[32m%s\n\033[m' "$1"; }

prompt() {
    success "$(curl -sf "$INSTALL_SCRIPT_URL")"
    printf 'Do you want to execute the following script? [Y/n]: '
    read -r ans
    { [ "$ans" = 'N' ] || [ "$ans" = 'n' ]; } && exit
}

install() {
    prompt
    [ -f "$SHV_LOC" ] || die "shv appears to be already installed at $SHV_LOC"
    success "shv will be installed at $SHV_LOC"
    mkdir -p "$BIN_LOC"
    curl "$SHV_URL" -o "$SHV_LOC"
    chmod +x "$SHV_LOC"
}

remove() {
    prompt
    [ -f "$SHV_LOC" ] && rm "$SHV_LOC"
    success "shv has been removed"
}
