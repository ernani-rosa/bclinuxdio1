#!/bin/bash

cd /
#Diretórios
mkdir publico adm ven sec

#Variáveis para grupos e usuários
Groups="GRP_ADM GRP_VEN GRP_SEC"
GRP_ADM="carlos maria joao"
GRP_VEN="debora sebastiana roberto"
GRP_SEC="josefina amanda rogerio"

#Criação dos grupos
for group in $Groups
do
	groupadd $group
done

#Atribuição de dono das pastas pelos grupos
chown root:GRP_ADM adm
chown root:GRP_VEN ven
chown root:GRP_SEC sec

#Permissões
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

#Criação dos usuários
for usr in $GRP_ADM
do
	useradd $usr -m -s /bin/bash -p $(openssl passwd $usr) 
	usermod -G GRP_ADM $usr
done

for usr in $GRP_VEN
do
	useradd $usr -m -s /bin/bash -p $(openssl passwd $usr) 
	usermod -G GRP_VEN $usr
done

for usr in $GRP_SEC
do
	useradd $usr -m -s /bin/bash -p $(openssl passwd $usr) 
	usermod -G GRP_SEC $usr
done

