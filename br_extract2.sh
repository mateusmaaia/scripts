#!/bin/bash
# br_extract.sh
# Mostra as ultimas 5 manchetes do BR-linux
#
URL="http://br-linux.org/"

# O padrão são linhas que iniciam com maiusculas
# Até  a linha "Destaques de hoje" é lixo
#
lynx -source "$URL" | 
	grep '<h1><a style' | 
	sed '
		s/<[^>]*//g
		s/&quot;/"/g
		s/^ *//' |
	head -n 5
