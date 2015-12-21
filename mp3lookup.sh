#!/bin/sh

rm -rf temp.spx
ffmpeg -i $1 -loglevel quiet temp.spx 2> /dev/null
echo "File conversion complete."

# Clear file
echo "" > output.txt

URL='http://search.midomi.com/v2/?method=search&type=identify'

# We must pass an AppNumber in User-Agent. What it is doesn't matter, and other fields are
# irrelevant too.
USER_AGENT='User-Agent: AppNumber=31'

curl -X POST -H 'Transfer-Encoding: chunked' -H "$USER_AGENT" -T temp.spx -o output.txt "$URL"

echo "Upload started."