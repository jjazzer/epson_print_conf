#!/usr/bin/bash
SCRIPT_DIR="$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"
source "$SCRIPT_DIR/bin/activate"
python3 -m venv "$SCRIPT_DIR"
cd "$SCRIPT_DIR"
"$SCRIPT_DIR/bin/pip" install -r requirements.txt
