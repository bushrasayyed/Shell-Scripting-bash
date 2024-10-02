echo " Enter number of rows"
read row
echo "----DISPLAYING PATTERN ----"
i=0
while [ $i -lt $row ]
do
 j=0
 while [ $j -le $i ] 
 do
 echo -n "$j "
j=`expr $j + 1`
 done
 echo ""
 i=`expr $i + 1`
done