#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "ERROR:: run this script with root access"
    exit 1
else 
    echo "you are root user"
fi

yum install mysql -y

if [ $? -ne 0 ] 
then
     echo "MYSQL installation failed"
then 
    echo  "MYSQL installation success"
fi

    yum install net-tools -y
    
     if [ $? -ne 0 ] 
then
     echo "NET-TOOLS installation failed"
else 
    echo  "NET-TOOLS installation success"
fi   