#!/bin/bash

num=0
echo "Insira um número de 1 a 100"

# lendo a variável
read num

# código
if [[ $num -lt 1 ]] || [[ $num -gt 100 ]]; then
        echo "Número inválido!"
    
    elif (( $num % 2 )); then
        echo "O número $num é ímpar."

    else 
        echo "O número $num é par."
fi
