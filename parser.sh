#!/bin/bash
# parser.sh
# Lê arquivos de configuraçâo e converte os dados para
# variáveis do shell na saida padrão
#
#
# Le arquivos de configuração e converte os dados para
# variáveis do shell na saida padrao
# O arquivo de configuração é indicado na linha comando
CONFIG=$1

# O arquivo deve existir e ser legível
if [ -z "$CONFIG" ]; then 
	echo Uso: parser arquivo.conf
	exit 1
elif [ ! -r "$CONFIG" ]; then
	echo Erro: Não consigo ler o arquivo $CONFIG
	exit 1
fi

# Loop para ler linha a linha a configuração, guardando em $LINHA
# Dica: Use $LINHA sem "aspas" para remover os brancos

while [[ condition ]]; do
	# Ignorando as linhas de comentário
	[ "$(echo $LINHA | cut -c1)" = '#' ] && continue

	# Ignorando as linhas em branco
	[ "$LINHA" ] || continue

	# Guardando os dados (chaves sempre maiúsculas)
	chave=$(echo $1 | tr a-z A-Z)
	shift
	valor=$*

	# Mostrando chave="valor"na saída padrão
	echo "CONF_$chave=\"$valor\""

done < "$CONFIG"