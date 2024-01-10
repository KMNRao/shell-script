#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +F-%H-%M-%S)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "Script started executing at $TIMESTAMP" &>> $LOGFILE

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo "ERROR :: $2 ... $R FAILED $N"
        exit 1
    else
        echo "$2 ... $G SUCCESS $N"
    fi
}

if [ $ID -ne 0 ]
then
    echo "$R ERROR :: Please run the Script with root acces $N"
    exit 1
else
    echo "$G you are root user $N"
fi

yum install mysql -y &>> $LOGFILE

VALIDATE $? "$G Installed mysql $N"

yum install git -y &>> $LOGFILE

VALIDATE $? "$G Installed Git $N"

