export DISPLAY=:0
iceweasel "https://calendar.google.com/calendar/render?pli=1#main_7|list" &
sleep 15
xdotool search --onlyvisible --name firefox key F11
cd /home/pi/Pictures
ls |sort -R |tail -$N |while read file; do
  sleep 60
  iceweasel $file
  sleep 15
  xdotool key Ctrl+w
done
