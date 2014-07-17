#!/bin/bash

## instalamos los paquetes necesarios

yum install gcc-c++ patch readline readline-devel zlib zlib-devel 
yum install libyaml-devel libffi-devel openssl-devel make 
yum install bzip2 autoconf automake libtool bison iconv-devel

##tenemos el ruby version manager (rvm) ?
##sino lo tenemos 
##te dejo el codigo para checkearlo

curl -L get.rvm.io | bash -s stable

##setup rvm enviromment
source /etc/profile.d/rvm.sh

##instalamos la version de ruby 
rvm install 2.1.1

##configuramos la version de ruby por defecto a ser usada por 
##las apps
rvm use 2.1.1 --default

##verifica la version de ruby 
ruby --version 

###pendiente instalar las gem y la parte de rails
###como un aspecto importante lanzando el comando rails -v la consola 
###nos indicara que es lo que propiamente hemos de instalar:
###  sudo gem install rails

###  en el caso del script es suficiente agregando ademas las 2 instrucciones 
### restantes 

rvm rubygems current
gem install rails
