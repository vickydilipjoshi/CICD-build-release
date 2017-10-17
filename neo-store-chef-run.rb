require 'jenkins_api_client'


@client = JenkinsApi::Client.new(:server_ip => 'ec2-54-172-53-37.compute-1.amazonaws.com:8080',
         :identity_file => '~/source_files/mgmt-vpc.pem') 
# The following call will return the version of Jenkins instance
puts @client.exec_cli("version")

