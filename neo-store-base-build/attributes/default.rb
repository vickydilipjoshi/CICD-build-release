  
  #java base build Attributes - Please edit accordingly  -  


# default jdk attributes
#default['java']['jdk_version'] = nil
#default['java']['openjdk_version'] = nil
#default['java']['set_default'] = nil
#default['java']['java_home'] = nil

# paths and source directories as variables 
default['java']['spin_root'] = '/home/spin/'
default['java']['keystore_db'] = '/home/spin/conf/keydb/'
default['java']['spin_lib'] = '/home/spin/lib/'
default['java']['local_lib'] = '/usr/local/lib/'
default['java']['debigulator_path'] = '/usr/bin/debigulator'
default['java']['PATH'] = ':/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/usr/local/lib:/opt/chefdk/bin:/opt/chefdk/embedded/bin:/opt/maven/current/bin:/home/{yahoo_id}/.local/bin:/home/{yahoo_id}/bin'
default['java']['Ruby_PATH'] = '/opt/chefdk/embedded/bin/ruby'
default['java']['libmagic_path'] ='/home/spin/lib' 
default['node'][:java][:user] ="'#{yahoo_id}'"
#default['java']['chef_run']  = 


 # the following retry parameters apply when downloading oracle java
#default['java']['ark_retries'] = 0
#default['java']['ark_retry_delay'] = 2
#default['java']['ark_timeout'] = 600
#default['java']['ark_download_timeout'] = 600
#

# upcoming refactor efforts 

#

#default['java'][BASE_PACKAGES_01] = [
#  ['openssl'],
#  ['openssl-devel'],
#  ['glibc']
#]
