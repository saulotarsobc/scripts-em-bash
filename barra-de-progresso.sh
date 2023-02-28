#!/bin/bash

origem="arquivo"
destino="arquivo_2"

tamanho=$(du -b "$origem" | awk '{print $1}')
pv "$origem" | dd of="$destino" bs=4096 conv=notrunc,noerror status=none
echo "A cópia foi concluída com sucesso!"
