#
# Cookbook Name:: tomcat
# Attributes:: default
#
#Default deploy Box 

default['tomcat']['base_version'] = 7
default['tomcat']['port'] = 8080
default['tomcat']['proxy_port'] = nil
default['tomcat']['ssl_port'] = nil
default['tomcat']['ssl_proxy_port'] = nil
default['tomcat']['ajp_port'] = 8009
default['tomcat']['shutdown_port'] = 8005
default['tomcat']['catalina_options'] = ''
default['tomcat']['java_options'] = JAVA_OPTS= "-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -Xmx512m -XX:MaxPermSize=256m -XX:+UseConcMarkSweepGC"
default['tomcat']['use_security_manager'] = false
default['tomcat']['authbind'] = 'no'
default['tomcat']['deploy_manager_apps'] = true
default['tomcat']['max_threads'] = nil
default['tomcat']['ssl_max_threads'] = nil 
default['tomcat']['ssl_cert_file'] = nil
default['tomcat']['ssl_key_file'] = nil
default['tomcat']['ssl_chain_files'] = []
default['tomcat']['keystore_file'] = 'neo-store/src/dynamodb.keystore'


#Auth information 
default['tomcat']['truststore_file'] = nil
default['tomcat']['truststore_type'] = nil
default['tomcat']['certificate_dn'] = 'cn=localhost'
default['tomcat']['loglevel'] = 'INFO'
default['tomcat']['tomcat_auth'] = 'true'
default['tomcat']['instances'] = {}
default['tomcat']['run_base_instance'] = true


case node['platform']

when 'centos', 'redhat'
  default['tomcat']['user'] = 'tomcat'
  default['tomcat']['group'] = 'tomcat'
  default['tomcat']['home'] = "/usr/share/tomcat#{node["tomcat"]["base_version"]}"
  default['tomcat']['base'] = "/usr/share/tomcat#{node["tomcat"]["base_version"]}"
  default['tomcat']['config_dir'] = "/etc/tomcat#{node["tomcat"]["base_version"]}"
  default['tomcat']['log_dir'] = "/var/log/tomcat#{node["tomcat"]["base_version"]}"
  default['tomcat']['tmp_dir'] = "/var/cache/tomcat#{node["tomcat"]["base_version"]}/temp"
  default['tomcat']['work_dir'] = "/var/cache/tomcat#{node["tomcat"]["base_version"]}/work"
  default['tomcat']['context_dir'] = "#{node["tomcat"]["config_dir"]}/Catalina/localhost"
  default['tomcat']['webapp_dir'] = "/var/lib/tomcat#{node["tomcat"]["base_version"]}/webapps"
  default['tomcat']['keytool'] = 'keytool'
  default['tomcat']['lib_dir'] = "#{node["tomcat"]["home"]}/lib"
  default['tomcat']['endorsed_dir'] = "#{node["tomcat"]["lib_dir"]}/endorsed"
end 