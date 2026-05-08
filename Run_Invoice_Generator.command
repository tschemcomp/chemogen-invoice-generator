#!/bin/bash

# ============================================================
#   Chemogen Academy — Invoice Generator
#   One-click launcher for Mac
#   Double-click this file to start
# ============================================================

# Get the folder where this script lives
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# The HTML file must be in the same folder as this script
HTML_FILE="$DIR/chemogen_invoice_generator.html"

# Check the HTML file exists
if [ ! -f "$HTML_FILE" ]; then
    osascript -e 'display alert "File Not Found" message "chemogen_invoice_generator.html must be in the same folder as this launcher.\n\nPlease put both files together and try again." as critical'
    exit 1
fi

# Find a free port (start from 8765)
PORT=8765
while lsof -i :$PORT &>/dev/null; do
    PORT=$((PORT + 1))
done

# Start Python local web server in background
cd "$DIR"
python3 -m http.server $PORT &>/dev/null &
SERVER_PID=$!

# Wait a moment for server to start
sleep 1

# Open in default browser
open "http://localhost:$PORT/chemogen_invoice_generator.html"

# Show notification
osascript -e 'display notification "Invoice Generator is running at localhost" with title "Chemogen Academy" subtitle "Opening in your browser..."'

echo ""
echo "================================================"
echo "  Chemogen Academy — Invoice Generator"
echo "  Running at: http://localhost:$PORT"
echo "  Press Ctrl+C to stop the server"
echo "================================================"
echo ""

# Keep running until user closes terminal or presses Ctrl+C
trap "kill $SERVER_PID 2>/dev/null; echo 'Server stopped.'; exit 0" INT TERM

# Wait for server process
wait $SERVER_PID
