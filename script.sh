#!/bin/bash

NAME=$(whiptail --inputbox "Yourname" 8 39 --title "Example Dialog" 3>&1 1>&2 2>&3)
DATE=$(whiptail --inputbox "Date" 8 39 --title "Example Dialog" 3>&1 1>&2 2>&3)
STATUS=$(whiptail --inputbox "Status" 8 39 --title "Example Dialog" 3>&1 1>&2 2>&3)

                                                                        # A trick to swap stdout and stderr.
# Again, you can pack this inside if, but it seems really long for some 80-col terminal users.
exitstatus=$?
if [ $exitstatus = 0 ]; then
    echo " $NAME ":" $DATE ": Status:" $STATUS "
else
    echo "User selected Cancel."
fi


