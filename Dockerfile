FROM debian:10.2-slim

RUN apt-get update && apt-get install software-properties-common dirmngr -y \
 && apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xF1656F24C74CD1D8 \
 && add-apt-repository 'deb [arch=amd64,i386] http://ftp.heanet.ie/mirrors/mariadb/repo/10.2/debian sid main' \
 && apt-get update \
 && apt-get install mariadb-backup nmap awscli lbzip2 -y
