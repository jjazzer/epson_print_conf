#!/usr/bin/bash
SCRIPT_DIR="$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"
source "$SCRIPT_DIR/bin/activate"
python3 "$SCRIPT_DIR/parse_devices.py" "$@"
