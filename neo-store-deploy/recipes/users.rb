#
# Cookbook Name:: tomcat
# Recipe:: users
#
# Author:: Andrew S Thompson 
#

template "#{node["tomcat"]["config_dir"]}/tomcat-users.xml" do
  source 'tomcat-users.xml.erb'
  owner 'root'
  group 'root'
  mode '0777'
  variables(
    :users => TomcatCookbook.users,
    :roles => TomcatCookbook.roles,
  )
  notifies :restart, 'service[tomcat]'
end

template "#{node["tomcat"]["config_dir"]}/tomcat-users.xml" do
  source 'tomcat-users.xml.erb'
  owner 'centos'
  group 'centos'
  mode '0777'
  variables(
    :users => TomcatCookbook.users,
    :roles => TomcatCookbook.roles,
  )
  notifies :restart, 'service[tomcat]'
end



template "#{node["tomcat"]["config_dir"]}/tomcat-users.xml" do
  source 'tomcat-users.xml.erb'
  owner %w{ yahoo_id}
  group 'root'
  mode '0777'
  variables(
    :users => TomcatCookbook.users,
    :roles => TomcatCookbook.roles,
  )
  notifies :restart, 'service[tomcat]'
end

