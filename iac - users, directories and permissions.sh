#!/bin/bash

echo "Hello world!"

echo "Creating directories."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
mkdir /jur
mkdir /fin

echo "Creating users groups."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
groupadd GRP_JUR
groupadd GRP_FIN

echo "Creating users."
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123)  -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123)  -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt 456789) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt 456789) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt 456789) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt password1234) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt password1234) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt password1234) -G GRP_SEC

useradd osmar -m -s /bin/bash -p $(openssl passwd -crypt jur2392) -G GRP_JUR
useradd regino -m -s /bin/bash -p $(openssl passwd -crypt jur2392) -G GRP_JUR
useradd josefa -m -s /bin/bash -p $(openssl passwd -crypt jur2392) -G GRP_JUR

useradd jacinto -m -s /bin/bash -p $(openssl passwd -crypt financial5678) -G GRP_FIN
useradd modesto -m -s /bin/bash -p $(openssl passwd -crypt financial5678) -G GRP_FIN
useradd ascanio -m -s /bin/bash -p $(openssl passwd -crypt financial5678) -G GRP_FIN

echo "Giving permissions of directories."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chown root:GRP_JUR /jur
chown root:GRP_FIN /fin

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 770 /jur
chmod 770 /fin
chmod 777 /publico








