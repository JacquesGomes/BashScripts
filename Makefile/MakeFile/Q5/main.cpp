#include <bits/stdc++.h>

using namespace std;

#include "primalidade.hpp"
#include "fatorial.hpp"

int main (){

    int n;
    cin >> n; //recebe o número inicial via linha de comando

    long int ntotal = fatorial(n); // chama função de fatorial e recebe o valor de n!

    long int aux = 2; //inicia a variável aux para ajudar na busca do número primo
    
    long int primo = primalidade(ntotal, aux);//chama a função que encontrará o número primo

    //ex de entrada: 5 -> saída 113

    cout << primo << endl;

}