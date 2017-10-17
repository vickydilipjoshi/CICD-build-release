#
# Cookbook Name:: store-maven
# Recipe:: default
#
# Modifactions done by 
# Andrew S Thompson(admin@entercloud.info>
#
# Copyright:: 2015, YSB
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe 'java::default'
include_recipe 'ark::default'

mvn_version = node['store-maven']['version'].to_s

ark 'store-maven' do
  url      node['store-maven'][mvn_version]['url']
  checksum node['store-maven'][mvn_version]['checksum']
  home_dir node['store-maven']['m2_home']
  version  node['store-maven'][mvn_version]['version']
  append_env_path true
end

template '/etc/store-mavenrc' do
  source 'store-mavenrc.erb'
  mode   '0755'
end
