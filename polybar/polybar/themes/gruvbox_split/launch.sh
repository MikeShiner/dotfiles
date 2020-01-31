#### Gruvbox Split Theme ####

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar -c ~/.config/polybar/themes/gruvbox_split/config --reload gruvbox &
  done
else
    polybar -c ~/.config/polybar/themes/gruvbox_split/config --reload gruvbox &
fi
