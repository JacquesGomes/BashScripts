#include "fatorial.hpp"
#include <iostream>

int fatorial(int n){

    if(n == 0){
        //caso base em que n == 0 e já coletamos todas as multiplicações
        return 1;
    }

    int x = n * (fatorial(n-1)); // chamada da função recursiva com n * n-1 até n == 0
    return x;
}