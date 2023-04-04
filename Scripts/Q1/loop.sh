#!/usr/bin/bash
declare -i NUMERO=1
for file in test*.in; 
do 
./a.out <  >> test.out
((NUMERO++)); 
done

echo \ >> test.out
