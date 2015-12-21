#!/bin/sh

rm -rf temp.spx
ffmpeg -i $1 -loglevel quiet temp.spx 2> /dev/null
echo "File conversion complete."

#clear file
echo "" > output.txt

URL='http://search.midomi.com/v2/?method=search&type=identify&prebuffer=4.096'
USER_AGENT='User-Agent: AppNumber=31 AppVersion=6.9.3b APIVersion=2.0.0 BRAND=lge MODEL=LG-D855'

curl -X POST -H 'Transfer-Encoding: chunked' -H "$USER_AGENT" -T temp.spx -o output.txt "$URL"

echo "Upload started."