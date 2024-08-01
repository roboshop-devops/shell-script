#!/bin/bash

ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE=/tmp/$0-$TIMESTAMP.log

echo -e "$Y script started executing at $N ::$R $TIMESTAMP $N"
VALIADTE= (){
    if [ $1 -ne 0 ]
    then 
        echo -e "$2 ....$R FAILED $N"
    else
        echo -e "$2 ....$G SUCCESS $N"
    fi
}

if [ $ID -ne 0 ]
then
    echo -e "$R ERROR::run this script with root access $N"
    exit 1
else 
    echo -e "$G you are root user $N"
fi

for package in $@ 
do
    yum list installed package &>> $LOGFILE
    if [ $? -ne 0]
    then
        echo "yum install $package -y" &>> $LOGFILE
        VALIADTE $? "installation of $pacakage"
    else
        echo "$package already installed ....$Y SKIPPING $N" 
    fi
done