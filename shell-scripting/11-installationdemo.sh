#!/bin/bash

ID=$(id -u)

VALIDATE (){
    
if [ $1 -ne 0 ]
then
    echo "ERROR:: $2 ..... FAILD"
else
    echo "$2 ..... SUCCESS"
fi
}

if [ $ID -ne 0 ]
then 
    echo "ERROR:: run this script with root access"
    exit 1
else
    echo "you are root user"
fi

yum install mysqll -y

VALIDATE $? mysql-installation

yum install gitt -y

VALIDATE $? git-installation