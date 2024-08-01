#!/bin/bash

ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=(date +%F-%h-%m-%s)
LOGFILE="/tmp/$0-$TIMESTAMP"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2 ....$R FAILED $N"
    else 
         echo "$2 ....$R SUCCESS $N"
}

if [ $ID -ne 0 ]
then 
    echo -e "$R ERROR:: run this script with root access $N"
    exit 1
else
    echo "$G you are root user $N"

 cp /e/ROBOSHOP/roboshop-shell/monodb.repo /etc/yum.repos.d/mongo.repo &>> LOGFILE

 VALIADTE $? "Mongodb repo copied"

dnf install mongodb-org -y 

VALIADTE $? "INSTALLING Mongodb"

systemctl enable mongod

VALIADTE $? "ENABLING Mongodb"

systemctl start mongod

VALIADTE $? "STARTING Mongodb"

sed -i 's/127.0.0.1/0.0.0/g' /etc/mongod.conf

VALIADTE $? "REMOTE ACCESS FOR Mongodb"

systemctl restart mongod

VALIADTE $? "RESTARTING MONGODB"






    