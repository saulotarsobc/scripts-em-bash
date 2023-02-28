#!/bin/bash

# Define o tamanho do arquivo em bytes
# tamanho=$((1024*1024*1024)) # 1gb
tamanho=$((1024*200))

# Gera o arquivo usando o comando dd e pv
dd if=/dev/zero bs=1 count=$tamanho | pv -s $tamanho > arquivo

# Exibe uma mensagem de conclusão
echo "O arquivo foi gerado com sucesso!"
