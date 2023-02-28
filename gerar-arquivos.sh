#!/bin/bash

# Define o tamanho do arquivo em bytes
# tamanho=$((1024*1024*1024));
tamanho=$((1024*1024));

# Gera o arquivo usando o comando dd
dd if=/dev/zero of=arquivo bs=1 count=$tamanho

# Exibe uma mensagem de conclusão
echo "O arquivo foi gerado com sucesso!"
