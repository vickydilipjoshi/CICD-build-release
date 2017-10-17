# -*- mode: ruby -*-
# vi: set ft=ruby :

#Authored Andrew S Thompson 
# primary use for kitchen testings 


Vagrant.configure(2) do |build_config|
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.


#name of the configured box for reference
  build_config.vm.box = "base-build-box-01"



#forwarded ports - 
  build_config.vm.network "forwarded_port", guest: 80, host: 8080, guest: 80, host:8085

 

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # null  build_config.vm.network "private_network", ip: "192.168.33.10"     example entries 
  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # build_config.vm.network "public_network"

 

  #synced forlder information 
    build_config.vm.synced_folder "/Users/athompson/CICD-build-release", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
    build_config.vm.provider "base-build-box" do |vm|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #    Customize the amount of memory on the VM:
      vm.memory = "1024"
      end 
  #
  # View the documentation for the provider you are using for more
  # information on available options.


  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
   build_config.vm.provision "shell", inline: <<-SHELL
      sudo apt-get update -y
 
    SHELL
end
