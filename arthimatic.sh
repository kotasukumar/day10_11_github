#program to do arthimatic operation and upload to github
#readin values
array=()
read -p "enter first number: " a
read -p "enter secound number: " b
read -p "enter third number: " c
#doing operations
echo "value of a+b*c is :" $(($a+$b*$c))
echo "value of a*b+c is : " $(($a*$b+$c))
echo "value of c+a/b is ; " $(($c+$a/$b))
echo "value of a%b+c is : " $(($a%$b+$c))
#read with dictionary
ao[10]=$(($a+$b*$c))
ao[11]=$(($a*$b+$c))
ao[12]=$(($c+$a/$b))
ao[13]=$(($a%$b+$c))
#read from dictionary to array
a[0]=${ao[10]}
a[1]=${ao[11]}
a[2]=${ao[12]}
a[3]=${ao[13]}
#sorting descending order
echo "before sorting: " ${a[@]}
	for((i=0;i<=3;i++))
	do
		for((j=i+1;j<=3;j++))
		do
			if(( ${a[i]} < ${a[j]}))
			then
				temp=${a[i]}
				a[$i]=${a[j]}
				a[$j]=$temp
			fi
		done
	done
echo "after soting decending:" ${a[@]}
#sorting asending order
for((i=0;i<=3;i++))
do
	for((j=i+1;j<=3;j++))
	do
		if(( ${a[i]} > ${a[j]} ))
		then
			temp=${a[i]}
			a[$i]=${a[j]}
			a[$j]=$temp
		fi
	done
done
echo "after sorting asending: " ${a[@]}
