#!/bin/bash
# One-time: create the public repo paulraju12/paulandpen and turn on GitHub Pages.
# Afterwards, updates are just: git add -A && git commit -m "update" && git push
set -e
cd "$(dirname "$0")"
gh repo create paulraju12/paulandpen --public --source=. --push --description "Paul and Pen coloring books: book page and free samples"
gh api -X POST repos/paulraju12/paulandpen/pages -f "source[branch]=main" -f "source[path]=/" >/dev/null
echo "Live in ~1 minute at: https://paulraju12.github.io/paulandpen/"
