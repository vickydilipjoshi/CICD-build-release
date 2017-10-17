#
# Cookbook Name:: tomcat
# Recipe:: default
#

#

# required for the secure_password method from the openssl cookbook
::Chef::Recipe.send(:include, Opscode::OpenSSL::Password)


tomcat_pkgs = value_for_platform(
  'default' => ["tomcat#{node['tomcat']['base_version']}"]
  )
if node['tomcat']['deploy_manager_apps']
  tomcat_pkgs << value_for_platform(   
    %w{ centos redhat} => {
      'default' => "tomcat#{node['tomcat']['base_version']}-admin-webapps",
    }
    )
end

tomcat_pkgs.compact!

end

unless node['tomcat']['deploy_manager_apps']
  directory "#{node['tomcat']['webapp_dir']}/manager" do
    action :delete
    recursive true
  end
  file "#{node['tomcat']['config_dir']}/Catalina/localhost/manager.xml" do
    action :delete
  end
  directory "#{node['tomcat']['webapp_dir']}/host-manager" do
    action :delete
    recursive true
  end
  file "#{node['tomcat']['config_dir']}/Catalina/localhost/host-manager.xml" do
    action :delete
  end
end

node.set_unless['tomcat']['keystore_password'] = secure_password
node.set_unless['tomcat']['truststore_password'] = secure_password

if node['tomcat']['run_base_instance']
  tomcat_instance "base" do
    port node['tomcat']['port']
    proxy_port node['tomcat']['proxy_port']
    ssl_port node['tomcat']['ssl_port']
    ssl_proxy_port node['tomcat']['ssl_proxy_port']
    ajp_port node['tomcat']['ajp_port']
    shutdown_port node['tomcat']['shutdown_port']
  end
end

node['tomcat']['instances'].each do |name, attrs|
  tomcat_instance "#{name}" do
    port attrs['port']
    proxy_port attrs['proxy_port']
    ssl_port attrs['ssl_port']
    ssl_proxy_port attrs['ssl_proxy_port']
    ajp_port attrs['ajp_port']
    shutdown_port attrs['shutdown_port']
    config_dir attrs['config_dir']
    log_dir attrs['log_dir']
    work_dir attrs['work_dir']
    context_dir attrs['context_dir']
    webapp_dir attrs['webapp_dir']
    catalina_options attrs['catalina_options']
    java_options attrs['java_options']
    use_security_manager attrs['use_security_manager']
    authbind attrs['authbind']
    max_threads attrs['max_threads']
    ssl_max_threads attrs['ssl_max_threads']
    ssl_cert_file attrs['ssl_cert_file']
    ssl_key_file attrs['ssl_key_file']
    ssl_chain_files attrs['ssl_chain_files']
    keystore_file attrs['keystore_file']
    keystore_type attrs['keystore_type']
    truststore_file attrs['truststore_file']
    truststore_type attrs['truststore_type']
    certificate_dn attrs['certificate_dn']
    loglevel attrs['loglevel']
    tomcat_auth attrs['tomcat_auth']
    user attrs['user']
    group attrs['group']
    home attrs['home']
    base attrs['base']
    tmp_dir attrs['tmp_dir']
    lib_dir attrs['lib_dir']
    endorsed_dir attrs['endorsed_dir']
  end
end
