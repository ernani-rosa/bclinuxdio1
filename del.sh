#!/bin/bash

cd /
#Diretórios
rmdir publico
rmdir adm
rmdir ven
rmdir sec
rm -r publico
rm -r adm
rm -r ven
rm -r sec

#Variáveis para grupos e usuários
Groups="GRP_ADM GRP_VEN GRP_SEC"
GRP_ADM="carlos maria joao"
GRP_VEN="debora sebastiana roberto"
GRP_SEC="josefina amanda rogerio"

#Criação dos grupos
for group in $Groups
do
	groupdel $group
done

#Criação dos usuários
for usr in $GRP_ADM
do
	userdel $usr -r -f
done

for usr in $GRP_VEN
do
	userdel $usr -r -f
done

for usr in $GRP_SEC
do
	userdel $usr -r -f
done
