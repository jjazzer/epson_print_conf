#!/usr/bin/bash
SCRIPT_DIR="$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"
source "$SCRIPT_DIR/bin/activate"
python3 -m venv "$SCRIPT_DIR"
cd "$SCRIPT_DIR"
"$SCRIPT_DIR/bin/pip" install -r requirements.txt
cp "$SCRIPT_DIR/.gitignore.bak" "$SCRIPT_DIR/.gitignore"
for script in $SCRIPT_DIR/bin/epc*; do
  sln $script ~/.local/bin/$(basename $script)
done
