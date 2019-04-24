#!/bin/bash

echo "Vou buscar os dados do sistema. Posso continuar? [sn]"
read RESPOSTA
test "$RESPOSTA" = "n" && exit

echo "Data e Horário: " 
date
echo
echo "Uso do disco: " 
df
echo
echo "Usuarios conectados: " 
w 

