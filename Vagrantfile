# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  unless Vagrant.has_plugin?('vagrant-env')
    system('vagrant plugin install vagrant-env') || exit!
    exit system('vagrant', *ARGV)
  end

  unless Vagrant.has_plugin?('vagrant-reload')
    system('vagrant plugin install vagrant-reload') || exit!
    exit system('vagrant', *ARGV)
  end

  config.env.enable

  config.vm.box = "ubuntu/bionic64"

  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.network "forwarded_port", guest: 8100, host: 8100
  config.vm.network "forwarded_port", guest: 8200, host: 8200
  config.vm.network "forwarded_port", guest: 8443, host: 8443

  config.vm.synced_folder "~/Documents/vagrant", "/home/vagrant/Documents", type: "virtualbox", create: true
  config.vm.synced_folder "~/.ssh", "/home/vagrant/.ssh", type: "virtualbox", create: true, mount_options: [ "dmode=770", "fmode=600" ]

  config.vm.provider "virtualbox" do |vb|
    vb.customize [ "modifyvm", :id, "--accelerate3d", "on" ]
    vb.customize [ "modifyvm", :id, "--clipboard", "bidirectional" ]
    vb.customize [ "modifyvm", :id, "--cpus", "2" ]
    vb.customize [ "modifyvm", :id, "--draganddrop", "bidirectional" ]
    vb.customize [ "modifyvm", :id, "--vram", "128" ]
    vb.gui = true
    vb.name = "vagrant-developer"
    vb.memory = "8192"
  end

  config.vm.provision "file", source: "./config/etc/gdm3/custom.conf", destination: "./custom.conf"
  config.vm.provision "shell", path: "./scripts/base.sh", privileged: false
  config.vm.provision "shell", path: "./scripts/git.sh", privileged: false
  config.vm.provision "file", source: "~/.gitconfig", destination: "~/.gitconfig"
  config.vm.provision "shell", path: "./scripts/docker.sh", privileged: false
  config.vm.provision "shell", path: "./scripts/ruby.sh", privileged: false
  config.vm.provision "shell", path: "./scripts/openjdk.sh", privileged: false
  config.vm.provision "shell", path: "./scripts/node.sh", args: [ ENV[ 'NVM_VERSION' ], ENV[ 'NODE_VERSION' ] ], privileged: false
  config.vm.provision "shell", path: "./scripts/firefox.sh", privileged: false
  config.vm.provision "shell", path: "./scripts/google-chrome.sh", privileged: false
  config.vm.provision "shell", path: "./scripts/vs-code.sh", privileged: false
  config.vm.provision "shell", path: "./scripts/jetbrains-toolbox.sh", args: [ ENV[ 'JETBRAINS_TOOLBOX_VERSION' ], ENV[ 'JETBRAINS_TOOLBOX_SHA256SUM' ] ], privileged: false
  config.vm.provision "reload"
end
