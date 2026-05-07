#!/usr/bin/env bash
# Renders cv.tex → CV_DongJoonYi.pdf in ../assets/.
# Requires TinyTeX (or any TeX Live with xelatex) + Source Sans 3 / Roboto / FontAwesome 6.
set -euo pipefail

cd "$(dirname "$0")"

# Ensure TinyTeX is on PATH (no-op if already installed system-wide)
if [[ -d "$HOME/.TinyTeX/bin/x86_64-linux" ]]; then
  export PATH="$HOME/bin:$HOME/.TinyTeX/bin/x86_64-linux:$PATH"
fi

OUT_PDF="../CV_DongJoonYi.pdf"

# Run xelatex twice — first pass builds aux info, second pass resolves links/refs.
xelatex -interaction=nonstopmode -halt-on-error cv.tex
xelatex -interaction=nonstopmode -halt-on-error cv.tex

cp cv.pdf "$OUT_PDF"

# Tidy build artifacts (keep .pdf in cv_src/ for quick preview).
rm -f cv.aux cv.log cv.out cv.fdb_latexmk cv.fls cv.synctex.gz

echo
echo "Done: $(realpath "$OUT_PDF")"
