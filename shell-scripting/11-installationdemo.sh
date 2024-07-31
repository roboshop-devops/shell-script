#!/bin/bash

ID=$(id -u)

R="\e[31"
G="\e[32"
N="\e[0"

VALIDATE (){
    if [ $1 -ne 0 ]
     then
         echo -e "ERROR:: $2 .....$R FAILD"
         exit 1
    else
        echo "$2 ..... $G SUCCESS"
    fi
}

if [ $ID -ne 0 ]
then 
    echo "$RERROR:: run this script with root access"
    exit 1
else
    echo "$Gyou are root user"
fi

yum install mysqll -y

VALIDATE $? mysql-installation

yum install git -y

VALIDATE $? git-installation