#!/bin/sh
tmp_file=/tmp/content

echo "This is written inside my content file" > $tmp_file

trap "echo 'This is farewell. Have a last look at your content: '; echo '['$(date +%D-%X)'] '$(cat $tmp_file); exit" HUP INT TERM KILL QUIT

while true; do
 echo -n "You want to read some content ? [yes/no]"
 read ANSWER
 if [ "$ANSWER" = "yes" ]; then
  echo "["$(date +%D-%X)"] "$(cat $tmp_file)
 fi 
done
