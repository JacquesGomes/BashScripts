#! /usr/bin/bash

echo "#include <iostream>
	using namespace std;

	int main (){
	
	int x = 10;
	cout << x;

	return 0;
	}" > $1

echo "g++ $1
	./a.out" > $2

bash $2
