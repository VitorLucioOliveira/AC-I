/*
 Guia_0203.v
810862 - Vitor Lucio de Oliveira
*/

#include <iostream>
#include <sstream>
#include <cmath>
#include <string>

double transforma(std::string binario) {
    double valordecimal = 0.0;
    size_t posicao = binario.find(',');

    for (size_t i = 0; i < binario.length(); ++i) {
        if (i == posicao) {
            continue; // Skip the decimal point
        }

        int digit = binario[i] - '0';
        valordecimal += digit * pow(2, posicao - i - 1);
    }

    return valordecimal;
}

int main() {
    std::string binario1;
    std::cout << "Digite um número binário";
    std::getline(std::cin, binario1);
    std::string binario2;
    std::cout << "Digite outro número binário para realizar a conta";
    std::getline(std::cin, binario2);

    double valordecimal1 = transforma(binario1);
    double valordecimal2 = transforma(binario2);
    double valorfinal;
    int escolha;
    std::cout<< "Digite qual operação deseja fazer 1- soma 2- subtração 3- multiplicação 4- divisão";
    std::cin>>escolha;
    switch (escolha){
        case(1): {
            valorfinal=valordecimal1+valordecimal2;
            std::cout << "O valor da operação em decimal é: " << valorfinal << std::endl;
            break;
        }
        case(2): {
            valorfinal=valordecimal1-valordecimal2;
            std::cout << "O valor da operação em decimal é: " << valorfinal << std::endl;
            break;
        }
        case(3): {
            valorfinal=valordecimal1*valordecimal2;
            std::cout << "O valor da operação em decimal é: " << valorfinal << std::endl;
            break;
        }
        case(4): {
            valorfinal=valordecimal1/valordecimal2;
            std::cout << "O valor da operação em decimal é: " << valorfinal << std::endl;
            break;
        }
        default:
            std::cout << "Opção inválida.\n";
    
    }

    return 0;
}