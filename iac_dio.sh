#!/bin/bash

echo -e "\nCriando diretórios...\n"
sleep 2
mkdir /publico
echo "Diretorio publico criado!"
sleep 2
mkdir /adm
echo "Diretorio adm criado!"
sleep 2
mkdir /ven
echo "Diretorio ven criado!"
sleep 2
mkdir /sec
echo  "Diretorio sec criado!"
sleep 2


echo -e "\nCriando grupos de usuários...\n"
sleep 2
groupadd GRP_ADM
echo "Grupo ADM criado!"
sleep 2
groupadd GRP_VEN
echo "Grupo VEN criado!"
sleep 2
groupadd GRP_SEC
echo "Grupo SEC criado!"
sleep 2

echo -e "\nCriando usuários...\n"
sleep 2
echo -e "Criando usuários do grupo ADM...\n "
sleep 2
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
echo "Usuário Carlos criado!"
sleep 2
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
echo "Usuário Maria criado!"
sleep 2
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
echo "Usuário João criado!"
sleep 2

echo -e "\nCriando usuários do grupo VEN...\n "
sleep 2
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
echo "Usuário Debora criado!"
sleep 2
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
echo "Usuário Sebastiana criado!"
sleep 2
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
echo "Usuário Roberto criado!"
sleep 2

echo -e "\nCriando usuários do grupo SEC...\n "
sleep 2
useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
echo "Usuário Josefina criado!"
sleep 2
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
echo "Usuário Amanda criado!"
sleep 2
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
echo "Usuário Rogerio criado!"
sleep 2

cd /

echo -e "\nEspecificando permissões dos diretórios....\n"
sleep 2
chown root:GRP_ADM /adm
chmod 770 /adm
ls -l | grep adm
cat /etc/group |grep GRP_ADM
echo 
sleep 2
chown root:GRP_VEN /ven
chmod 770 /ven
ls -l | grep ven
cat /etc/group |grep GRP_VEN
echo 
sleep 2
chown root:GRP_SEC /sec
chmod 770 /sec
ls -l | grep sec
cat /etc/group |grep GRP_SEC
echo 
sleep 2
chmod 777 /publico
ls -l | grep publico

echo -e "\nExecutado com sucesso!\n"