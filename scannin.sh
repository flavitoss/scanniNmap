#!/bin/bash

echo "ALVO [+]: "
read target

echo "PORTA/PORTAS [+]: 80-100"
read doors

echo "TIMING 0-5 [+]: "
read timing

echo "Aguarde, a consulta sera feita em instantes."

scan=sudo nmap $target -p$doors -T$timing

echo scan
