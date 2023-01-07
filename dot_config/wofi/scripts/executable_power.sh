#!/bin/bash
#

chosen=$(echo -e "shutdown\nreboot\nsuspend\n" | wofi --show dmenu)

if [ "$chosen" == 'shutdown' ]; then
  shutdown -h now
elif ["$chosen" == 'reboot' ]; then
  reboot
elif ["$chosen" == 'suspend']; then 
  systemctl suspend
fi
