#
# Cookbook Name:: store-maven
# Attributes:: default
#
# Author:: Seth Chisamore (<schisamo@opscode.com>)
# Author:: Bryan W. Berry (<bryan.berry@gmail.com>)
#
# Copyright:: Copyright (c) 2010-2013, Opscode, Inc.
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default['store-maven']['version'] = 2
default['store-maven']['m2_home'] = ['/centos/home/maven', 'home/babylon/.m2'] 
default['store-maven']['mavenrc']['opts'] = '-Dmaven.repo.local=$HOME/.m2/repository -Xmx384m -XX:MaxPermSize=192m'
default['store-maven']['3']['version'] = '3.3.3'
default['store-maven']['3']['url'] = "http://apache-mirror.rbc.ru/pub/apache/maven/maven-3/3.3.3/binaries/apache-maven-3.3.3-bin.tar.gz"
default['store-maven']['2']['checksum'] = 'b9a36559486a862abfc7fb2064fd1429f20333caae95ac51215d06d72c02d376'
#default['store-maven']['2']['plugin_version'] = '2.4'
default['store-maven']['3']['url'] = "http://apache.mirrors.tds.net/maven/maven-3/#{node['store-maven']['3']['version']}/binaries/apache-store-maven-#{node['store-maven']['3']['version']}-bin.tar.gz"
default['store-maven']['3']['checksum'] = '077ed466455991d5abb4748a1d022e2d2a54dc4d557c723ecbacdc857c61d51b'
default['store-maven']['3']['plugin_version'] = '3.4'
default['store-maven']['repositories'] = ['http://repo1.maven.apache.org/maven2','/etc/maven/settings.xml',
'/home/centos/settings.xml','/home/babylon/.m2/settings.xml']
default['store-maven']['setup_bin'] = false
default['store-maven']['version'] = 3
default['store-maven']['version'] = '3.3.3'
default['store-maven']['version']
