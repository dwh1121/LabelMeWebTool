#!/bin/sh

# change the apt mirror to taiwan
sed -i 's/archive.ubuntu.com/free.nchc.org.tw/g' /etc/apt/sources.list

# update ubuntu config
apt update
DEBIAN_FRONTEND=noninteractive apt -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" upgrade

# install dependencies for labelme
apt install -y apache2 git libapache2-mod-perl2 libcgi-session-perl libapache2-mod-php make php

# Clone LabelMe, move it and make
# git clone https://github.com/CSAILVision/LabelMeAnnotationTool.git
git clone https://github.com/dwh1121/LabelMeAnnotationTool.git

# fix draw_anno is null bug
# sed -i 's/draw_anno.time_point/anno.time_point/g' ./LabelMeAnnotationTool/annotationTools/js/handler.js

# remove example data
rm -rf ./LabelMeAnnotationTool/annotationCache
rm -rf ./LabelMeAnnotationTool/Annotations
rm -rf ./LabelMeAnnotationTool/Images
rm -rf ./LabelMeAnnotationTool/Masks
rm -rf ./LabelMeAnnotationTool/Scribbles

# apache2 configuration: enabling SSI and perl/CGI scripts  
cp ./LabelMeAnnotationTool/DockerFiles/ubuntu_16.04/000-default.conf /etc/apache2/sites-available/000-default.conf
cp ./LabelMeAnnotationTool/DockerFiles/ubuntu_16.04/apache2.conf /etc/apache2/apache2.conf

mv ./LabelMeAnnotationTool/ /var/www/html/LabelMeAnnotationTool/
cd /var/www/html/LabelMeAnnotationTool/ && make
chown -R www-data:www-data /var/www/html

# Config apache
a2enmod include
a2enmod rewrite
a2enmod cgi

apt --purge -y autoremove git make

# clean cache
apt update
apt clean
apt autoclean

rm -rf /tmp/*
