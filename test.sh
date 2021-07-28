#! /bin/bash
echo
echo
echo                                                             "############################################"
echo                                                             "#                                          #"
echo                                                             "#           ALL IN ONE  SCRIPT             #"
echo                                                             "#             @author-->Ammar<--           #"
echo                                                             "#                                          #"
echo                                                             "############################################"

read -p "ENTER YOUR FULL NAME : " fullname
echo "Your are Done! "$fullname

echo -n  "Please enter  the domain or ip to be pinged :"
read pg
echo -n "Enter  how many packets do you want to send: "
read pk
ping -c$pk  $pg
