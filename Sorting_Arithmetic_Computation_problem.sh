declare -A compute
a=1
b=2
c=4
compute[1]=$((a+(b*c)))
compute[2]=$(((a*b)+c))
compute[3]=$((c+(a/b)))
compute[4]=$(((a%b)+c))
echo ${compute[@]}

