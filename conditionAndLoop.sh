#!/bin/bash

prime(){
echo "Primes are -"
for((i=1;i<=n;i++))
do
  c=0
  for((j=1;j<=i;j++))
  do
   x=$(($i % $j))
   if [ $x -eq 0 ] ; then
    c=$(($c + 1 ))
   fi
  done

if [ $c -eq 2 ] ; then
ret=$i
echo $i
fi
done
}

echo "Enter Your Last Limit :"
read n
prime n

(echo "";echo "Done")
