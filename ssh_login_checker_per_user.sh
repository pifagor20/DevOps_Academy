#!/bin/bash

echo "Failed attempts: "
grep -a sshd /var/log/auth.log | grep -i "Failed" | grep -v "message repeated" | cut -d " " -f9 | sort | uniq -c

echo "Successful attempts: "
grep -a sshd /var/log/auth.log | grep -i "Accepted" | cut -d " " -f9 | sort | uniq -c