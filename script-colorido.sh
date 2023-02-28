#!/bin/bash

# Define as cores
vermelho='\033[0;31m'
verde='\033[0;32m'
amarelo='\033[0;33m'
azul='\033[0;34m'
roxo='\033[0;35m'
ciano='\033[0;36m'
branco='\033[0;37m'
reset='\033[0m'

# Exibe o texto em diferentes cores
echo -e "${vermelho}Este texto é vermelho.${reset}"
echo -e "${verde}Este texto é verde.${reset}"
echo -e "${amarelo}Este texto é amarelo.${reset}"
echo -e "${azul}Este texto é azul.${reset}"
echo -e "${roxo}Este texto é roxo.${reset}"
echo -e "${ciano}Este texto é ciano.${reset}"
echo -e "${branco}Este texto é branco.${reset}"
