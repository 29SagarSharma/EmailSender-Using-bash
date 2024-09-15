EmailSender Using Bash Scripting

Sends your daily status update by storing it in a file in an specific format over emails using shell scripting.

First we create A basic GUI Using whiptail Taking three field from user their name, date and status

Second store them in a file called status.txt

Third for sends the status.txt file as an attachmnet with email for that we use ssmtp(Simple Mail Transfer Protocol).
    configure ssmtp(sudo nano /etc/ssmtp/ssmtp.conf)
root=myaccount@gmail.com
mailhub=smtp.gmail.com:587
FromLineOverride=YES
AuthUser=myaccount@gmail.com
AuthPass=myAppPassword
UseSTARTTLS=YES
UseTLS=YES
To be clear: AuthPass should be your new 16 character App Password and NOT your gmail password.
Save with ctrl + X and Y.
Now test it out:
1
echo "Hello, World!" | ssmtp fakeaddress@someplace.com

For sending a file as attachment we use mailx in our script.
At last we automate it sending mail at 9:00 pm from monday-friday by setting cron job using command crontab -e and save it.
      0 21 * * 1-5 /pathtofile/script.sh
        
 Usage: ./pathtofile/script.sh
