#!/bin/bash

# reminder to take screen breaks every 20 minutes
function i_reminder {
  echo $(date) first reminder
  # find sounds by ls /System/Library/Sounds
  osascript -e 'display notification "Get up and look someplace far, do full blinks, for 20 seconds" with title "It is time to take a break" sound name "Blow"'
  osascript -e 'tell app "System Events" to display dialog "Break time"'
  sleep 10
  echo $(date) second reminder
  osascript -e 'display notification "20-20-20 rule, do not forget" with title "Hey, another notification" sound name "Hero"'
  sleep 10
  echo $(date) coming back reminder
  osascript -e 'display notification "haha" with title "You should be back now" sound name "Frog"'
  echo $(date) break is over
  sleep $((20*60))
}




while [ 1 ]; do
  i_reminder
done