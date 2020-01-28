# Name: Teddy Nguyen
# Date: 1/8/2020
# Title: Lab1 - Unix/Linux Commands and Basic Shell Programming
# Description: This program computes how many users are logged on, checks if the correct user is logged on, and computes the area of a rectangle.

#!/bin/sh
echo Executing $0
echo $(/bin/ls | wc -l) files
wc -l $(/bin/ls)
echo "HOME="$HOME
echo "USER="$USER
echo "PATH="$PATH
echo "PWD="$PWD
echo "\$\$"=$$
user=`whoami`
numusers=`who | wc -l`
echo "Hi $user! There are $numusers users logged on."
if [ $user = "salgtash" ] # This causes an error because the user is supposed to be 'teddy' NOT 'salgtash'
then
	echo "Now you can proceed!"
else
	echo "Check who logged in!"
	exit 1
fi

response="Yes"
while [ $response != "No" ]
do
	echo "Enter height of rectangle: "
	read height
	echo "Enter width of rectangle: "
	read width
	area=`expr $height \* $width` # Calculates area by multiplying the height and width variables
	echo "The area of the rectangle is $area"
	
	echo "Would you like to repeat for another rectangle [Yes/No]?"
	read response # The while loops will keep looping unless "No" is typed out exactly like that. It is case-sensitive.
done
