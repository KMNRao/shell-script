#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$({date -%F}-%H-%M-%S)
LOFGILE="/tmp/$0-$TIMESTAMP.log"