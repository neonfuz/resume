#!/usr/bin/env bash

CHROME=$(which chrome 2>/dev/null) || CHROME=$(which chromium) || CHROME=$(which chromium-browser) || CHROME=/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome

mkdir -p docs
echo '<!-- generated '`date +%s`' -->' > docs/index.html
echo '<meta http-equiv="Refresh" content="0; url='https://neonfuz.xyz'" />' >> docs/index.html
pnpm run dev &
SERVER_PID=$!
sleep 3
"$CHROME" --headless --disable-gpu \
    --run-all-compositor-stages-before-draw \
    --font-render-hinting=none \
    --print-to-pdf=docs/resume.pdf http://localhost:5173
kill $SERVER_PID
