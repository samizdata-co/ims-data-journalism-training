#!/bin/sh
# Quarto (multiplex) writes presentation-speaker.html next to the source,
# where its presentation_files/ libraries are missing. Move it next to the
# published viewer output, where the libraries live.
set -eu
cd "${QUARTO_PROJECT_DIR:-.}"
out="${QUARTO_PROJECT_OUTPUT_DIR:-output}"
if [ -f docs/presentation-speaker.html ]; then
  mv docs/presentation-speaker.html "$out/docs/presentation-speaker.html"
fi
