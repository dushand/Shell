#shell script to read values in CSV(comma seperated) file. But not a perl script. I need shell script.
#
# CSV file will looks as follows: 
#------------------------------------------------
#   user1, password1, homedir1
#   user2, password2, homedir2
#   user3, password3, homedir3
#-------------------------------------------------
#I want read line by line at once.
#eg: in the first loop $user,  $password  and $homedir variable values should like 
#   $user="user1"   and $password="password1"   and $homedir="homedir1"
#
#in the second loop $user,  $password  and $homedir variable values should like 
#   $user="user2"   and $password="password2"   and $homedir="homedir2"
#
#like ..etc

#!/bin/ksh
# This line would actually be coming from the program:
tr "," " " <$1 | while read user password homedir
do
      echo "User=$user, Password=$password, Home=$homedir"
done
