name             'neo-store-deploy'
maintainer       'Andrew Thompson'
maintainer_email 'admin@entercloud.info'
license          'Apache 2.0'
description      'Installs/Configures tomcat'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.0'

depends 'neo-store-base-build:default'

supports 'centos'
supports 'redhat'


recipe 'neo-store-deploy::default', 'Installs and configures Tomcat with latest wars from artifactory'
recipe 'neo-store-deploy::users', 'Setup mininal users and roles for Tomcat'
