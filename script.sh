#!/bin/bash


#Using whiptail for USer input
NAME=$(whiptail --inputbox "Yourname" 8 39 --title "Status Update" 3>&1 1>&2 2>&3)
DATE=$(whiptail --inputbox "Date" 8 39 --title "Status Update" 3>&1 1>&2 2>&3)
STATUS=$(whiptail --inputbox "Status" 8 39 --title "Status Update" 3>&1 1>&2 2>&3)

                                                                        
exitstatus=$?
if [ $exitstatus = 0 ]; then
    echo " $NAME ":" $DATE ": Status" $STATUS " > script.txt  
    
else
    echo "User selected Cancel."
fi
recipient="sagaramps29@gmail.com"
subject="Status Update"
body="Today's Status"
attachment="script.txt"

echo -e "$body" | mailx -s "$subject" -A "$attachment" "$recipient"
    echo "Email sent successfully with attachment: $attachment"





