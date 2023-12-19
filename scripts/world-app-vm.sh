#!/bin/bash

cd
echo ""
echo "Updating..."
echo ""
sudo apt update -y
echo ""
echo "Update complete"
echo ""
echo "Upgrading..."
echo ""
sudo DEBIAN_FRONTEND=noninteractive apt upgrade -y
echo ""
echo "Upgrade complete"
echo ""

# install maven
echo "Installing Maven..."
echo ""
sudo DEBIAN_FRONTEND=noninteractive apt install maven -y
echo ""
echo "Maven install complete"
echo ""

# check maven is installed
echo "Confirming Maven installation..."
mvn -v
echo "Maven installation confirmed"
echo ""

# install JDK (java) 17
echo "Installing JDK Java 17..."
echo ""
sudo DEBIAN_FRONTEND=noninteractive apt install openjdk-17-jdk -y
echo ""
echo "JDK Java 17 complete"
echo ""

# check JDK 17 is installed
echo "Confirming Java installation..."
java -version
echo "Java installation confirmed"
echo ""

# install MySQL client
sudo apt-get update -y
sudo DEBIAN_FRONTEND=noninteractive apt-get install mysql-client -y

# connect to MySQL server
mysql -h <database_server_ip> -u root -p

