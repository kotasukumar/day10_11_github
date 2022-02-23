#program to do arthimatic operation and upload to github
read -p "enter first number: " a
read -p "enter secound number: " b
read -p "enter third number: " c
echo "value of a+b*c is :" $(($a+$b*$c))
echo "value of a*b+c is : " $(($a*$b+$c))
echo "value of c+a/b is ; " $(($c+$a/$b))
echo "value of a%b+c is : " $(($a%$b+$c))
