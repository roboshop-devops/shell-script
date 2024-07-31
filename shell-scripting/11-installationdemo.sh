#!/bin/bash

ID=$(id -u)

R="\e[31m"
G="\e[32m"
N="\e[0m"

TIMESTAMP=(date +%F-%H-%m-%s)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE (){
    if [ $1 -ne 0 ]
     then
         echo -e "ERROR:: $2 .....$R FAILD $N"
         exit 1
    else
        echo -e "$2 ..... $G SUCCESS $N"
    fi
}

if [ $ID -ne 0 ]  &> $LOGFILE
then 
    echo -e "$R ERROR:: run this script with root access $N"
    exit 1
else
    echo -e "$G you are root user $N"
fi

yum install mysql -y &>> $LOGFILE

VALIDATE $? mysql-installation

yum install git -y  &>> $LOGFILE

VALIDATE $? git-installation