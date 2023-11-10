#!/bin/bash

valores (){
echo "qual é a linha (2/24)"
read linha

echo "qual é a coluna (1/80)"
read coluna
clear
}

valores

if [ $linha -eq 1 ] || [ $linha -gt 24 ] || [ $coluna -gt 80 ]; then
echo invalido
valores
else
clear
tput cup $linha $coluna
echo "X"
tput cup 0 0
fi