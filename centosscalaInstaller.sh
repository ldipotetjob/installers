#!/bin/bash
## if you have wget instaled 
## wget http://www.scala-lang.org/files/archive/scala-2.10.1.tgz
##  in other case;please download file from Scala website 

#unzip file  
tar xvf scala-2.11.2.tgz
#move folder to lib directory
sudo mv scala-2.11.2 /usr/lib
#create symbolic link,best choice for oru PATH variable 
sudo ln -s /usr/lib/scala-2.11.2 /usr/lib/scala

#add Scala Directory in current session 
export PATH=$PATH:/usr/lib/scala/bin/

#add Scala Directory PERMANENT
#echo 'export PATH=$PATH:/usr/lib/scala/bin' >> /home/user/.bashrc

#just for check scala version in our case: 2.11.2
scala -version
