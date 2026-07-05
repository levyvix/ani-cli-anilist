#!/bin/sh
set -e

INSTALL_DIR="/usr/local/bin"
SCRIPT_NAME="ani-cli"
RAW_URL="https://raw.githubusercontent.com/levyvix/ani-cli-anilist/master/ani-cli"

echo "Instalando ani-cli-anilist..."

if ! command -v curl >/dev/null 2>&1; then
    echo "Erro: curl não encontrado." >&2
    exit 1
fi

if ! command -v jq >/dev/null 2>&1; then
    echo "Aviso: jq não encontrado. Necessário para integração AniList."
    echo "Instale com: sudo pacman -S jq  ou  sudo apt install jq"
fi

TMP=$(mktemp)
curl -fsSL "$RAW_URL" -o "$TMP"

if [ "$(id -u)" -eq 0 ]; then
    install -m 755 "$TMP" "$INSTALL_DIR/$SCRIPT_NAME"
else
    sudo install -m 755 "$TMP" "$INSTALL_DIR/$SCRIPT_NAME"
fi

rm -f "$TMP"

echo "Instalado em $INSTALL_DIR/$SCRIPT_NAME"
echo "Execute 'ani-cli anilist auth' para autenticar com o AniList."
