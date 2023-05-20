#include "primalidade.hpp"
#include <iostream>

long int primalidade(long int n, long int aux){

    if(aux >= n/2){
        //caso base em que aux já passou da metade de N e ainda não encontrou um divisor(lembrando que a variável "aux já começa do número 2, então qualquer divisor encontrado irá demonstrar a não-primalidade de "n")

        return n;
    }

    if(n % aux == 0){
        //caso encontre um divisor entre 2 e n/2, o número não é primo, então diminuimos n em 1, reiniciamos aux para 2 e chamamos novamente a função
        n--;
        aux = 2;
        return primalidade(n, aux);
    }

    return primalidade(n, aux+1); //aqui nos temos a chamada da função com o incremento de aux para quando nenhuma das condições forem encontradas (nesse caso, a recursão continua procurando se há um divisor entre aux + 1 e n/2)

}