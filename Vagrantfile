# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.box = "generic/debian9"
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.synced_folder "~/Documents/mycms/", "/var/www/mycms/", type: "nfs", :mount_options => ['actimeo=2']
  config.ssh.forward_agent = true
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "3072"
  end
end
