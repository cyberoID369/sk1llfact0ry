#!/bin/bash

echo "Делаем резервную копию..."

tar -cvf /home/cyberoid/Skill02/archive/backup.$(date +%Y%m%d-%H%M%S).tar /home /etc/ssh/sshd_config /etc/vsftpd.conf /etc/default/xrdp /etc/xrdp /var/log

echo "Операция завершена успешно."
