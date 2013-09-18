#script to count no of occuarance for perticualr word.
#
#Eg: swdfkTRUEafjknsdfTRUEasdfjkTRUEasf
#
# Want to calculate "TRUE" word no of repeating time.
#output should 3.

#--------------solution01-----------
echo swdfkTRUEafjknsdfTRUEasdfjkTRUEasf | sed 's/TRUE/TRUE\n/g' | grep -c TRUE

#--------------solution02-----------
sed 's/TRUE/TRUE\n/g' file.txt | grep -c TRUE

#--------------solution03-----------
awk -F "TRUE" '{print NF-1}' test.txt | awk '{ c+= $1} END { print c }'

#--------------solution04-----------
echo swdfkTRUEafjknsdfTRUEasdfjkTRUEasf | sed 's/TRUE/\ TRUE\ \/g' | grep -cw TRUE

#--------------solution05-----------
grep -o TRUE file.txt | wc -l

#--------------solution06-----------
echo "$variable" | grep -o TRUE | wc -l