#!/bin/bash

echo -e "Criando diretórios...\n"
sleep 2
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
echo -e "Diretorio sec criado!\n"
sleep 2


echo -e "Criando grupos de usuários...\n"
sleep 2
groupadd GRP_ADM
echo "Grupo ADM criado!"
sleep 3
groupadd GRP_VEN
echo "Grupo VEN criado!"
sleep 3
groupadd GRP_SEC
echo "Grupo SEC criado!"
sleep 2

echo -e "Criando usuários...\n"
sleep 2
echo -e "Criando usuários do grupo ADM...\n "
sleep 2
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
echo "Usuário Carlos criado!"
sleep 3
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
echo "Usuário Maria criado!"
sleep 3
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
echo "Usuário João criado!"
sleep 3

echo -e "Criando usuários do grupo VEN...\n "
sleep 2
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
echo "Usuário Debora criado!"
sleep 3
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
echo "Usuário Sebastiana criado!"
sleep 3
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
echo "Usuário Roberto criado!"
sleep 3

echo -e "Criando usuários do grupo SEC...\n "
sleep 2
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
echo -e "\n"
sleep 2
chown root:GRP_ADM /adm
chmod 770 /adm
ls -l | grep adm
cat /etc/group |grep GRP_ADM
sleep 4
chown root:GRP_VEN /ven
chmod 770 /ven
ls -l | grep ven
cat /etc/group |grep GRP_VEN
sleep 4
chown root:GRP_SEC /sec
chmod 770 /sec
ls -l | grep sec
cat /etc/group |grep GRP_SEC
sleep 4

chmod 777 /publico
ls -l | grep publico

echo "Executado com sucesso!"