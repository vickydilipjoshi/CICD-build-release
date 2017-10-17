execute ‘fetch_war’ do
  
  command 'curl -i -u athompson:APBT8mrnCDnuFZabjjqxQMGhWxC -O "http://ec2-54-175-177-65.compute-1.amazonaws.com:8081/artifactory/luminate-maven-snapshot/com/yahoo/ysb/store/store-security/0.0.2-SNAPSHOT/store-security-0.0.2-20150916.213606-1.jar"'
  command 'mkdir -p /lib_source'
  command 'ln -s source/lib /lib_source/path'
end 


#to unpacakges  
#to deploy