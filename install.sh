#!/bin/sh

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install openjdk-8-jdk git -y
sudo mkdir /home/minecraft
cd /home/minecraft
sudo wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
sudo java -Xms2048M -Xmsx3000M-jar BuildTools.jar --rev latest
sudo java -Xms2048M -Xmsx3000M -jar /home/minecraft/spigot-x.x.jar nogui
sudo sed -i 's/false/true/g' /home/minecraft/eula.txt
cd /home/minecraft
/usr/bin/java -Xms512M -Xmx1008M -jar ./spigot-x.x.jar nogui
sudo chmod +x /home/minecraft/run-minecraft.sh
