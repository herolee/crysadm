#!/bin/bash
#安装云监工环境脚本
#sanzuwu@gamil.com
#脚本适用CentOS
#更新源

yum update 

#安装python3.4

sudo yum install -y python3.4

#安装pip，确保本脚本和get-pip.py 文件在一个文件夹
BASE_DIR="$( cd "$( dirname "$0"  )" && pwd  )"
sudo chmod +x ${BASE_DIR}/get-pip.py
sudo python3.4 ${BASE_DIR}/get-pip.py

sudo pip3.4 install redis && sudo pip3.4 install requests && sudo pip3.4 install flask && sudo pip3.4 install flask-mail

#安装redis-server
sudo yum install -y redis


#运行云监工

sudo chmod +x ${BASE_DIR}/run.sh && sudo chmod +x ${BASE_DIR}/down.sh  
sudo sh ${BASE_DIR}/run.sh

#sudo python3.4 ${BASE_DIR}/crysadm/crysadm/crydadm_hlper.py &
#sudo python3.4 ${BASE_DIR}/crysadm/crysadm/crydadm.py &

