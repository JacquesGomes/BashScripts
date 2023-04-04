#!/usr/bin/bash
declare -i NUMERO=1
for file in test*.in; 
do 
./a.out < $file >> test.out
((NUMERO++)); 
done

echo \ >> test.out
tail -n $NUMERO test.out

