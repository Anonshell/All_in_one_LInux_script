#! /bin/bash
banner(){
echo
echo
echo                                                             "############################################"
echo                                                             "#                                          #"
echo                                                             "#           ALL IN ONE  SCRIPT             #"
echo                                                             "#             @author-->Ammar<--           #"
echo                                                             "#                                          #"
echo                                                             "############################################"
}

message(){
echo "Press 1 to check ip"
echo "Press 2 to check  MAC"
echo "Press 3 to check ping"
echo "Press 0 to Exit"
}
main(){
read -p "Select your option :" option

if  [ $option -eq 1 ]
 then  
    echo "${red}IP = " $(hostname -I)
elif [ $option -eq 2 ]
 then 
      echo "MAC address = " $(ip link show eth0 | grep link/ether |awk '{print $2}')
elif [ $option -eq 3 ]
 then 
     echo -n "Enter domain or Ip : "
      read pg
echo -n "Enter packet  value : "
read pk
ping -c$pk $pg

elif [ $option -eq 0 ]
 then
        exit
else  
 echo "Wrong option!"
fi
}


while true
do
banner
message
main
done
