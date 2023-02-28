#!/bin/bash

# Executa o comando ls -l e redireciona a saída para um arquivo temporário
ls -l > lista_arquivos.txt

# Extrai as informações relevantes e formata a saída como CSV
awk '{print $1","$3","$4","$5","$6"-"$7"-"$8","$9}' lista_arquivos.txt | sed '1d' > lista_arquivos.csv

# Remove o arquivo temporário
rm lista_arquivos.txt

# Exibe uma mensagem de conclusão
echo "O arquivo CSV foi gerado com sucesso!"
