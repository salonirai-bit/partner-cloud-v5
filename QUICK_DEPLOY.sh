#!/bin/bash

echo "======================================"
echo "Partner Cloud V5 - Quick Deploy"
echo "======================================"
echo ""
echo "📦 Choose your deployment method:"
echo ""
echo "1. Netlify Drop (FASTEST - No login required)"
echo "   → Go to: https://app.netlify.com/drop"
echo "   → Drag this folder: $PWD"
echo "   → Get instant link!"
echo ""
echo "2. Open in Browser for local testing"
echo "   Starting local server..."
echo ""

# Start local server
python3 -m http.server 8765 &
SERVER_PID=$!
echo "✅ Server started! (PID: $SERVER_PID)"
echo ""
echo "🌐 Open in browser:"
echo "   http://localhost:8765/home.html"
echo ""
echo "Press Ctrl+C to stop the server"
echo ""

# Wait for interrupt
trap "kill $SERVER_PID 2>/dev/null; echo ''; echo '👋 Server stopped!'; exit 0" INT
wait $SERVER_PID
