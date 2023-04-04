#! /usr/bin/bash

mkdir $1

echo "#include <bits/stdc++.h>
	using namespace std;
	int main (){
	
	return 0;
	}" > ./$1/$1.cpp 

echo "" > ./$1/$1.txt