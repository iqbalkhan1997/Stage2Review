#!/bin/bash -x
flip=1;
heads=0;
tails=0;

while [[ $heads -ne 22 && $tails -ne 22 ]]
do
coin=$((RANDOM%2));
	if [ $coin -eq 0 ]
	then
	((heads++))
	else
	((tails++))
fi
	if [ $heads -eq 21 ]
	then
		echo "heads won by $(($heads-$tails)) times"
		echo "head flipped 21 times"
		break;
	elif [ $tails -eq 21 ]
	then
		echo " tails won by $(($tails-$heads)) times "
		echo "tail flipped 21 times";
break;
fi
((flip++))
done

echo "heads are $heads & tails are $tails";

c=$flip;

d=`echo $heads $c | awk '{print $1/$2}'`;
e=`echo $tails $c | awk '{print $1/$2}'`;
headspercentage=`echo $d 100 | awk '{print $1*$2}'`;
tailspercentage=`echo $e 100 | awk '{print $1*$2}'`;

echo " heads winning percentage is " $headspercentage;
echo " tails winning percentage is " $tailspercentage;

