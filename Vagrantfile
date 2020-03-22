# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  unless Vagrant.has_plugin?('vagrant-reload')
    system('vagrant plugin install vagrant-reload') || exit!
    exit system('vagrant', *ARGV)
  end

  config.vm.box = "ubuntu/bionic64"
  config.vm.synced_folder "~/Documents/vagrant", "/home/vagrant/Documents", type: "virtualbox", create: true

  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
    vb.customize ["modifyvm", :id, "--cpus", "4"]
    vb.customize ["modifyvm", :id, "--vram", "128"]
    vb.gui = true
    vb.name = "vagrant-developer"
    vb.memory = "8192"
  end

  config.vm.provision "shell", path: "./scripts/base.sh", privileged: false
  config.vm.provision "reload"
  config.vm.provision "docker"
end
