#!/bin/bash
# br_extract.sh
# Mostra as ultimas 5 manchetes do BR-linux
#
URL="http://br-linux.org/"

# O padrão são linhas que iniciam com maiusculas
# Até  a linha "Destaques de hoje" é lixo
#
lynx -dump -nolist "$URL" | 
	grep '^[A-Z]' | 
	sed '1,/^Destaques de hoje/ d' |
	head -n 5
