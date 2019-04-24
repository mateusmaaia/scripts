#!/bin/bash
#
# mensagem.sh 
# Mostra uma mensagem colorida na tela, lendo os 
# dados de um arquivo de configuraçâo externo
#

CONFIG="mensagem.conf"

# Configuração (serão lidas do $CONFIG)
USAR_CORES=0		# config: UsarCores
COR_LETRA=			# config: CoreLetra
COR_FUNDO= 			# config: CoreFundo
MENSAGEM='Mensagem padrão'

# Carregando a configuração do arquivo externo
eval $(./parser.sh $CONFIG)

# processando os valores
[ "$(echo $CONF_USARCORES | tr A-Z a-z)" = 'on' ] && USAR_CORES=1
COR_FUNDO=$(echo $CONF_CORFUNDO | tr -d -c 0-9)
COR_LETRA=$(echo $CONF_CORLETRA | tr -d -c 0-9)
[ "$CONF_MENSAGEM" ] && MENSAGEM=$CONF_MENSAGEM

# Configurações lidas, mostre a mensagem

# Configurações lidas, mostre a mensagem

if [ $USAR_CORES -eq 1 ]; then
	# Mostrar mensagem colorida
	# Exemplo: \033[40;32mOlá\033[m
	echo -e "\033[$COR_FUNDO;${COR_LETRA}m$MENSAGEM\033[m"
else
	# Não usar cores
	echo "$MENSAGEM"
fi