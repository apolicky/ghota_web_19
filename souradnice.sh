x1=$1
y1=$2
len=$3

x2=0

vy1=`echo 1307 - $y1 | bc`
vy2=`echo $vy1 + 45 | bc`

if [ -z "$len" ]
then
	len=1
fi

if [ "$len" -eq 1 ]
then
	x2=`echo $x1 + 140 | bc`
else
	x2=`echo $x1 + 200 | bc`
fi

echo "$x1,$vy1,$x2,$vy2"

