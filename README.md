# Vagrant Developer

## Operating System
Ubuntu 18.04.4 LTS (Bionic Beaver) x64

## Installed Software
* Angular CLI
* Cordova
* Docker
* Firefox
* Git
* Google Chrome
* Ionic CLI
* JetBrains Toolbox
* Node
* npm
* nvm
* OpenJDK (Java)
* Ruby
* VS Code
    * Extensions:
        * Live Server (ritwickdey.LiveServer)

## Build Instructions
### Requirements
* Git (_latest_)
* Vagrant (_latest_)
* VirtualBox (_latest_)

### Instructions
At a minimum, the only commands required to use this Vagrant environment is `vagrant up` and `vagrant halt`.

To begin use of this Vagrant development environment, issue the following command:
```
vagrant up
```
This command will run the initial provisioning required for the environment.

**NOTE**: Please allow the environment to configure during provisioning.  You may encounter reloads during the provisioning process.

To shut down the Vagrant development environment, issue the following command:
```
vagrant halt
```

## Changelog
### v.1.0.0 - 4/20/2020
* Configurations:
    * Base Ubuntu 18.04.4 LTS (Bionic Beaver) x64 box
    * Vagrant plugins:
        * vagrant-env
        * vagrant-reload
    * Forwarded ports (_for testing until refactoring_):
        * 8080:8080
        * 8100:8100
        * 8200:8200
        * 8443:8443
    * Synced folders:
        * ~/Documents/vagrant:/home/vagrant/Documents
        * ~/.ssh:/home/vagrant/.ssh (with mount_options: [ "dmode=770", "fmode=600" ])
    * OS Customizations:
        * Base Memory: 8 GB (8192 MB)
        * Processors: 2
        * Video memory: 128 MB
        * QoL Modifications:
            * 3D Accelerated enabled
            * Bidirectional clipboard
            * Bidirectional drag and drop (_needs testing_)
            * Automatic login enabled
            * Power saving mode disabled
            * Screen lock disabled
            * Time zone correction to America/New York
* Installations:
    * Git v.2.17.1
    * Docker v.19.03.8, build afacb8b7f0
    * Ruby v.2.5.1p57
    * OpenJDK v.11.0.6
    * nvm v.0.35.3
    * Node v.10.16.3
    * npm v.6.9.0
    * Angular CLI v.9.1.1
    * Cordova v.9.0.0
    * Ionic CLI v.6.6.0
    * Firefox v.75.0
    * Google Chrome
    * VS Code v.1.44.2
    * JetBrains Toolbox v.1.16.6319
