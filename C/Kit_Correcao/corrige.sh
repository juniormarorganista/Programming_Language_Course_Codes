#! /bin/sh
for name in *.m; do
	name=${name%.*}
	echo $name
	cat correcao_atividade.m.template | sed -e "s/__PROG__/$name/" > correcao_atividade.m
	octave --silent --eval correcao_atividade
done
