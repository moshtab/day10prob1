a=1
b=2
c=4
counter=0
compute[((counter++))]=$((a+(b*c)))
compute[((counter++))]=$(((a*b)+c))
compute[((counter++))]=$((c+(a/b)))
compute[((counter++))]=$(((a%b)+c))
echo ${compute[@]}
for ((i=0;i<5;i++))
do
    for((j=$i;j<5;j++))
    do
       if [ ${compute[$i]} -lt ${compute[$j]} ]
       then
          temp=${compute[i]}
          compute[$i]=${compute[$j]}
          compute[$j]=$temp
       fi
    done
done
echo "descending order is " ${compute[@]}


