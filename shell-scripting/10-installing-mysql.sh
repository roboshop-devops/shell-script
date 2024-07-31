#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "ERROR :: Please run this script with root access"
    exit 1
else
    echo "You are root user"
fi

yum install mysql -y

if [ $? -ne 0 ]
then
    echo "ERROR::Installation of MYSQL failed"
    exit 1
else
    echo "Installation of MYSQL success"
fi 

yum install git -y

if [ $? -ne 0 ]
then
    echo "ERROR::Installation of GIT failed"
     exit 1
else
     echo "Installation of GIT success"
fi       