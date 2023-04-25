#!/bin/bash

echo "------1.Проверяем наличие репозитория Backports...------"

bprep=backports

if grep $bprep /etc/apt/sources.list

then

echo "------Backports is ALIVE....ALIVE!------"

else

echo "------Репозиторий отсутствует, добавляем в sources.list...------"

echo "deb http://deb.debian.org/debian bullseye-backports main contrib non-free" | tee -a /etc/apt/sources.list

echo "------Выполнено успешно.------"

fi

echo "------2.Обновляем пакетный менеджер...------"

sudo apt update

echo "------Выполнено успешно.------"

echo "------3.Устанавливаем и запускаем Apache2...------"

sudo apt install apache2

echo "------4.Устанавливаем Python...------"

sudo apt install python

echo "------5.Устанавливаем и поднимаем SSH-server...------"

sudo apt-get install ssh && apt install openssh-server && systemctl enable sshd

echo -e "------SSH-server работает. \vВсе команды скрипта выполнены успешно.------"
