#!/bin/bash
# br_extract3.sh
# Mostra as ultimas 5 manchetes do BR-linux
#
URL="http://br-linux.org/"

# O padrão são linhas que iniciam com maiusculas
# Até  a linha "Destaques de hoje" é lixo
#

lynx -source "$URL" | 
	grep '<title>' | 
	sed '
		s/<[^>]*>//g
		s/&quot;/"/g
		s/^ *// 
		1d' |
	head -n 5
