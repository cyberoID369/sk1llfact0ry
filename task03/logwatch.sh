#!/bin/bash

logwatch --detail High --mailto root --service sshd --service vsftpd --range today
