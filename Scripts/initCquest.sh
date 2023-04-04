#! /usr/bin/bash

mkdir $1

echo "#include <bits/stdc++.h>

    #define endl '\n'
    #define FOR(i,n) for(int i=0; i<n; i++)

	using namespace std;
	int main (){
	
	return 0;
	}" > ./$1/$1.cpp 

for i in {1..3}; do
  echo "" > "./$1/test${i}.in"
done

echo "" > ./$1/test.out

echo "#!/usr/bin/bash
declare -i NUMERO=1
for file in test*.in; 
do 
./a.out < $file >> test.out
((NUMERO++)); 
done

echo \ >> test.out" >./$1/loop.sh

chmod +x ./$1/loop.sh