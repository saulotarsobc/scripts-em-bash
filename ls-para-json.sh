#!/bin/bash

# Executa o comando ls -l e converte a saída para JSON usando o jq
ls -l | jq -R -n '[inputs | split(" +"; "g") | {"perm": .[0], "links": .[1], "owner": .[2], "group": .[3], "size": .[4], "date": .[5] " " .[6] " " .[7], "name": .[8]}]' > arquivos.json

# Exibe uma mensagem de conclusão
echo "Os dados foram salvos no arquivo arquivos.json."
