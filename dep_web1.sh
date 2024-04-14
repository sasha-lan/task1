#!/bin/bash

if [[ $EUID -ne 0 ]]; then
 echo "This script must be run as root" 
 exit 1
else
 apt update
 apt install git -y
 git clone https://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@github.com/sasha-lan/task1.git
 echo "git installed" >> ~/report.txt
 chown -R $USER:$USER ~/deploy_web
 chmod +x ~/deploy_web/*.sh
 
 echo "Done!!!"
fi
