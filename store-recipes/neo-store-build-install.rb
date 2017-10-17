#
# Cookbook Name:: java_build_01
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.


# install array of packages - 
yum_package ['rpmdevtool', 'libtool-ltdl-devel', 'ImageMagick-devel', 'libjpeg-turbo-devel', 'libjpeg-turbo-static', 'libjpeg-turbo', 'libjpeg-turbo-utils.x86_64', 'pngcrush', 'gifsicle']  do
  action :install
  provider Chef::Provider::Pacakge::Yum
end


execute ‘java_dev_install’ do
  
  command 'sudo yum groupinstall "Development Tools”
  command ‘sudo yum install rpmdevtool libtool-ltdl-devel
'
  command ‘sudo yum install ImageMagick-devel
'
  command ‘sudo yum install libjpeg-turbo-devel libjpeg-turbo-static libjpeg-turbo  libjpeg-turbo-utils.x86_64 -y’ 
  command ‘sudo yum install pngcrush gifsicle -y’ 
  command ’ln -s /source_files/debigulator /usr/bin/debigulator’ 
'
  command ‘yum install libjpeg-turbo-devel libjpeg-turbo-static libjpeg-turbo  libjpeg-turbo-utils.x86_64 -y'
     
  command ‘sudo yum install pngcrush gifsicle -y'


'
end


yum_package ‘build_box_01’ do
  notifies                   # see description
  options                    String
  package_name               ['rpmdevtool', 'libtool-ltdl-devel', 'ImageMagick-devel', 'libjpeg-turbo-devel', 'libjpeg-turbo-static', 'libjpeg-turbo', 'libjpeg-turbo-utils.x86_64', 'pngcrush', 'gifsicle']
  provider                   Chef::Provider::Package::Yum
  #source                     /lib_source/
  subscribes                 # see description
  action                     :install
end


