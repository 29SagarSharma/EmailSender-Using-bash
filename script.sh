#!/bin/bash

#ssmtp for sending mails
recipient="sagar12s230@gmail.com"
subject="Status Update"
body="Today's Status"
attachment="script.txt"

#Using whiptail for USer input
NAME=$(whiptail --inputbox "Yourname" 8 39 --title "Status Update" 3>&1 1>&2 2>&3)
DATE=$(whiptail --inputbox "Date" 8 39 --title "Status Update" 3>&1 1>&2 2>&3)
STATUS=$(whiptail --inputbox "Status" 8 39 --title "Status Update" 3>&1 1>&2 2>&3)

#if data entry successfully then store it in a file and send over email                                                                        
exitstatus=$?
if [ $exitstatus = 0 ]; then
    echo " $NAME ":" $DATE ": Status" $STATUS " > script.txt  |  echo -e "$body" | mailx -s "$subject" -A "$attachment" "$recipient"
    echo "Email sent successfully with attachment: $attachment"
    
else
    echo "User selected Cancel."
fi








