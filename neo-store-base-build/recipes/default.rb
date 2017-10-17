#
# Cookbook Name:: java_base_build
# Recipe:: default
#Authored by Andrew Thompson






include_recipe 'java_base_build::fetch_pkgs'
include_recipe 'java_base_build::yum_update'

#{
#  "run_list": [
#  'recipe[java_base_build::yum_update]',
#  'recipe[java_base_build::fetch_pkgs]'
#  ]
#}



# deploy neo-store into host     example 127.0.0.1:8080  

#service 'deploy' do
#  pattern 'neo-store'
#  action [:enable, :start]
#end





