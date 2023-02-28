#!/bin/bash

# Define a porta na qual o servidor web irá rodar
PORTA=8080

# Inicia o servidor web usando o netcat
while true; do
  # Lê a solicitação HTTP
  request=$(nc -l $PORTA | head -n 1)
  
  # Obtém o caminho da URL solicitada
  path=$(echo $request | cut -d' ' -f2)
  
  # Se o caminho for "/", exibe a página inicial
  if [ "$path" == "/" ]; then
    echo -e "HTTP/1.1 200 OK\r\n"
    echo -e "<html><body><h1>Bem-vindo ao meu servidor web</h1></body></html>\r\n"
  # Se o caminho for "/arquivo", exibe o conteúdo do arquivo
  elif [ "$path" == "/arquivo" ]; then
    echo -e "HTTP/1.1 200 OK\r\n"
    cat /caminho/do/arquivo
  # Se o caminho for outro, exibe uma mensagem de erro 404
  else
    echo -e "HTTP/1.1 404 Not Found\r\n"
    echo -e "<html><body><h1>Página não encontrada</h1></body></html>\r\n"
  fi
done
