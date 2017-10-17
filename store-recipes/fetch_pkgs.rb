
# Recipe:: yum_packages 
#Andrew Thompson

#yum_package ‘package_name’ do
#  package_name               ['rpmdevtool', 'libtool-ltdl-devel', 'ImageMagick-devel', 'libjpeg-turbo-devel', 'libjpeg-turbo-static', 'libjpeg-turbo', 'libjpeg-turbo-utils.x86_64', 'pngcrush', 'gifsicle']
 # provider                   Chef::Provider::Package::Yum
  #source                     /lib_source/
 # action                     :install

  BASE_PACKAGES = [
  ['rpmdevtool'], ['libtool-ltdl-devel'], ['ImageMagick-devel'], ['libjpeg-turbo-devel'], ['libjpeg-turbo-static'], ['libjpeg-turbo'], ['libjpeg-turbo-utils.x86_64'], ['pngcrush'], ['gifsicle']
]

BASE_PACKAGES.each do |pkg|
  yum_package pkg do
    action :install
  end
end