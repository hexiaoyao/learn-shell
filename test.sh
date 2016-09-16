#!/bin/sh
if [ $# -ne 8 ]
then 
    echo "111USAGE: $0 -u user -p passwd -P port -h host"
    exit 1
fi

while getopts :u:p:P:h: name
do
    case $name in
    u)
      mysql_user=$OPTARG
    ;;
    p)
      mysql_passwd=$OPTARG
    ;;
    P)
      mysql_port=$OPTARG
    ;;
    h)
      mysql_host=$OPTARG
    ;;
    *)
      echo "222USAGE:$0 -u -p passwd -P port -h host"
      exit 1
    ;;
    esac
 done
if [ -z $mysql_user  ] ||  [ -z $mysql_passwd  ]  || [ -z $mysql_port  ]  || [  -z $mysql_host  ]
 then
    echo "333USAGE: $0 -u user -p passwd -P port -h host"
 else
     echo $mysql_user $mysql_passwd $mysql_port $mysql_host
 fi
