#!/bin/bash

echo "Successful attempts"
grep -a $(date -d '-1 minute' +'%H:%M') /var/log/auth.log | grep sshd | grep -i "Accepted" >> $HOME/ssh_login_attempts.log

echo "Failed attempts"
grep -a $(date -d '-1 minute' +'%H:%M') /var/log/auth.log | grep sshd | grep -i "Failed" >> $HOME/ssh_login_attempts.log