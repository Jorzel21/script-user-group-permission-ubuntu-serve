#!/bin/bash

echo  "----- Criando os repositorios -----"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "----- Criando os grupos ------"
groupadd GRP_VEN
groupadd GRP_ADM
groupadd GRP_SEC

echo "----- Criando os usuarios e colocando nos grupos ------"
useradd -maria -m -s /bin/bash -p $(opsenssl passws -crypt maria123) -G GRP_ADM
useradd -carlos -m -s /bin/bash -p $(openssl passwd -crypt carlos123) -G GRP_ADM
useradd -joao -m -s /bin/bash -p $(openssl passwd -crypt joao123) -G GRP_ADM
useradd -debora -m -s /bin/bash -p $(openssl passwd -crypt debora123) -G GRP_VEN
useradd -sebastiana -m -s /bin/bash -p $(openssl passwd -crypt sebastiana123) -G GRP_VEN
useradd -roberto -m -s /bin/bash -p $(openssl passwd -crypt roberto123) -G GRP_VEN
useradd -josefina -m -s /bin/bash -p $(openssl passwd -crypt josefina123) -G GRP_SEC
useradd -amanda -m -s /bin/bash -p $(openssl passwd -crypt amanda123) -G GRP_SEC
useradd -rogerio -m -s /bin/bash -p $(openssl passwd -crypt rogerio123) -G GRP_SEC

echo "----- Permissao das pastas -----"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico 
