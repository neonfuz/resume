#!/usr/bin/env bash

CHROME=$(which chrome 2>/dev/null) || CHROME=$(which chromium) || CHROME=$(which chromium-browser)

mkdir -p docs
echo '<!-- generated '`date +%s`' -->' > docs/index.html
pnpm run dev &
SERVER_PID=$!
sleep 3
$CHROME --headless --disable-gpu \
    --run-all-compositor-stages-before-draw \
    --font-render-hinting=medium \
    --print-to-pdf=docs/resume.pdf http://localhost:3000
kill $!
