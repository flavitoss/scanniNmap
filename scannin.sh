#!/bin/bash

echo "ALVO [+]: "
read target

echo "PORTA/PORTAS [+]: 80-100"
read doors

echo "TIMING 0-5 [+]: "
read timing






echo "Qual scanning voce deseja fazer (1 - TCP, 2 - UDP,3 - Servicos, 4 = SO)"
read choice

if [[ choice -eq 1 ]]; then
	scanTCP= sudo nmap -T$timing -sS $target -p$doors
  echo scanTCP
elif [[ choice -eq 2 ]]; then
  scanUDP= sudo nmap -T$timing -sU $target -p$doors
  echo scanUDP
elif [[ choice -eq 3 ]]; then
  scanService= sudo nmap -T$timing -sU $target -p$doors
  echo scanService
elif [[ choice -eq 4 ]]; then
	scanSO= sudo nmap -T$timing -sO $target -p$doors
	echo scanSO	
fi

