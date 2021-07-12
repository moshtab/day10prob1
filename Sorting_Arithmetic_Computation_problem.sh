a=1
b=2
c=4
counter=0
compute[((counter++))]=$((a+(b*c)))
compute[((counter++))]=$(((a*b)+c))
compute[((counter++))]=$((c+(a/b)))
compute[((counter++))]=$(((a%b)+c))
echo ${compute[@]}


