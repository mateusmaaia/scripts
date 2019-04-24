#!/bin/bash
#getopts.sh
#
#
# Loop que processa todas as opções da linha de comando
# Atenção ao formato daas opções válidas ":sa:" 
# - Os dois pontos do inicio ligam o modo silencioso
# - As opções válidas são 'sa:', que são -s e -a
# - Os dois-pontos de 'a:' representam um argumento: -a FOO
#
while getopts ":sa:" opcao
do
    # $opcao guarda a opção da vez (ou ? e : em casa=o de erro)
    # $OPTARG guarda o argumento da opção (se houver)
    #
    case $opcao in
        s)  echo "Ok Opção simples (-s)";;
	a)  echo "Ok Opção com argumento (-a), recebeu $OPTARG";;
	\?) echo "Erro Faltou argumento para: $OPTARG";;
    esac	
done
# O loop termina quando nenhuma opção for encontrada
# Mas ainda podem existir argumentos, como um nome de arquivo
# A variável $OPTIND guarda o índice do resto da linha de 
# comando, útil para arrancar os opções já processadas.
# 
echo
shift $((OPTIND -1))
echo "INDICE: $OPTIND"
echo "RESTO: $*"
echo
