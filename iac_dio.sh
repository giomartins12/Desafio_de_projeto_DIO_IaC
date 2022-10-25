#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
echo "Diretorio publico criado!"
sleep 3
mkdir /adm
echo "Diretorio adm criado!"
sleep 3
mkdir /ven
echo "Diretorio ven criado!"
sleep 3
mkdir /sec
echo "Diretorio sec criado!"
sleep 3


echo "Criando grupos de usuários..."

groupadd GRP_ADM
echo "Grupo ADM criado!"
sleep 3
groupadd GRP_VEN
echo "Grupo VEN criado!"
sleep 3
groupadd GRP_SEC
echo "Grupo SEC criado!"
sleep 3

echo "Criando usuários..."
sleep 2
echo "Criando usuários do grupo ADM... "

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
echo "Usuário Carlos criado!"
sleep 3
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
echo "Usuário Maria criado!"
sleep 3
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
echo "Usuário João criado!"
sleep 3

echo "Criando usuários do grupo VEN... "

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
echo "Usuário Debora criado!"
sleep 3
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
echo "Usuário Sebastiana criado!"
sleep 3
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
echo "Usuário Roberto criado!"
sleep 3

echo "Criando usuários do grupo SEC... "

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
echo "Usuário Josefina criado!"
sleep 3
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
echo "Usuário Amanda criado!"
sleep 3
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
echo "Usuário Rogerio criado!"
sleep 3

echo "Especificando permissões dos diretórios...."

chown root:GRP_ADM /adm
chmod 770 /adm
ls - l /home/adm
sleep 4
chown root:GRP_VEN /ven
chmod 770 /ven
ls - l /home/ven
sleep 4
chown root:GRP_SEC /sec
chmod 770 /sec
ls - l /home/ven
sleep 4

chmod 777 /publico

echo "Executado com sucesso!"