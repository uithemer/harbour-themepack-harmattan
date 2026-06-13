#!/bin/bash
# Wrap 192×192 MeeGo PNGs as embedded-raster SVG scalables for themepack-helper.sh.
# Uses xlink:href so Inkscape 1.2.x on Ubuntu CI can export density PNGs.

set -euo pipefail

cd "$(dirname "$0")/.." || exit 1

SRC="${1:-}"
if [ -z "$SRC" ] || [ ! -d "$SRC" ]; then
    echo "Usage: $0 <source-dir-with-pngs> [dest-theme-subdir]" >&2
    echo "  Example: $0 ../themes/MeeGo\\ icons/harbour-themepack-meego/theme/native/86x86/apps native/scalable/apps" >&2
    exit 1
fi

DEST="${2:-}"
if [ -z "$DEST" ]; then
    echo "Usage: $0 <source-dir-with-pngs> <dest-theme-subdir>" >&2
    exit 1
fi

mkdir -p "theme/$DEST"

python3 - "$SRC" "theme/$DEST" << 'PY'
import base64
import sys
from pathlib import Path

src = Path(sys.argv[1])
dest = Path(sys.argv[2])

for png in sorted(src.glob('*.png')):
    data = base64.b64encode(png.read_bytes()).decode('ascii')
    out = dest / f"{png.stem}.svg"
    out.write_text(
        '<?xml version="1.0" encoding="UTF-8"?>\n'
        '<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" '
        'width="192" height="192" viewBox="0 0 192 192">\n'
        f'  <image width="192" height="192" xlink:href="data:image/png;base64,{data}"/>\n'
        '</svg>\n',
        encoding='utf-8',
    )
    print(out)
PY

echo "Done. Run: cd theme && ./themepack-helper.sh"
