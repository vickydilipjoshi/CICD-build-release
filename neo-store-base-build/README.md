# neo-store-base-build

Installs the base directories and configurations and pacakges 

master chef base-repo bizapi build and deploy

java-base-build::default

Write usage instructions for each cookbook.

include base-build in your node's run_list:

{ "name":"my_node", "run_list": [ "recipe[base-build]" ] }





Build Machine Setup Steps:
sudo yum groupinstall "Development Tools"
sudo yum install rpmdevtool libtool-ltdl-devel
sudo yum install ImageMagick-devel
sudo yum install libjpeg-turbo-devel libjpeg-turbo-static libjpeg-turbo  libjpeg-turbo-utils.x86_64 -y
 sudo yum install pngcrush gifsicle -y
/usr/bin/debigulator (I can give you the debigulator file) - This has to be pushed to artifactory    -# tbi 
mkdir /home/y/tmp   #implement 
mkdir /home/y/conf/keydb/ (I can give you the keystore file) - This has to be   - pushed to artifactory  (Different files for different envs)
#needs to be implemented by default 
/usr/local/lib/libJMagick-6.4.0.so This has to be pushed to artifactory  
sudo ln -s  /usr/local/lib/libJMagick-6.4.0.so /usr/local/lib/libJMagick.so



Installs the base directories and configurations and pacakges 

