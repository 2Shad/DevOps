> install `Markdown All in one` extension in VSC
# what is DevOps
## why DevOps
### Benefits of DevOps

**Four pillars of DevOps best practice**
- Ease of Use (human interactions)
- Flexibility (can adapt to product owner's needs)
- Robustness - Faster delivery of product
- Cost - cost effective (Automation - CI/CD)

### Monolith - 2 tier & Microservices Architectures


# Virtual Machines
## **Requirements**
> [Install Ruby](https://github.com/oneclick/rubyinstaller2/releases/download/RubyInstaller-2.6.6-1/rubyinstaller-devkit-2.6.6-1-x64.exe)

> [Install Vagrant](https://www.vagrantup.com/)

> [Install VirtualBox](https://www.virtualbox.org/wiki/Downloads)

## **Vagrant**
### Commands:
- initialize vagrant with Vagrantfile `vagrant init`
- after configuring vagrantfile, deploy the VM `vagrant up`
- check status `vagrant status`
- delete VM `vagrant destroy`
- shutdowns the VM `vagrant halt`
- update VM `vagrant reload`
- access VM through SSH `vagrant ssh`

### Vagrantfile
```
Vagrant.configure("2") do |config|

 # creating a virtual machine ubuntu 
 config.vm.box = "ubuntu/xenial64"
 # creating a private network with ip
 config.vm.network "private_network", ip: "192.168.10.100"

end
```
#### **Additional configuration options**
- execute script upon VM creation `config.vm.provision "shell", path: "{file-path-relative-to-Vagrantfile}"`
- mounting a host folder to VM `config.vm.synced_folder "{host-path}", "{VM-path}"`

## **Linux**
In Ubuntu we have the `apt` Package Manager formerly known as `apt-get`.
#### Commands:
- super user do `sudo`
- update package repository `sudo apt update`
- upgrade packages `sudo apt upgrade`
- install a package through apt `sudo apt install`
- remove VM `sudo apt remove`
- manage services `systemctl status¦restart¦start¦stop`

### Linux basics
- Who am I `uname -a`
- Where am I `pwd`
- list dir/files `ls`
- list all including hidden folder/files `ls -a`
- make dir `mkdir {dir-name} {dir-name2} ...`
- navigate to dir `cd {dir-name}`
- how to create a file `touch {file-name}` (nano would also create a file if it doesn't already exist)
- How to display content of the file `cat {file-name}`
- How to remove file `rm [-f] {file-name}`
- How to remove directory `rm -r[f] {dir-name}`
- How to copy file `cp {source-file} {destination-file(dir)}`
- How to move file `mv {source-file} {destination-file(dir)}`
- How to check processes `top` or `htop` which is better.
  
#### Permissions
- Read Write Executable Read-Only
- How to check permissions `ls -la` or `ll`
- change permission `[sudo] chmod {permissions} {file-name}` need sudo depending if it needs superuser permissions
  
### Bash scripting
- `#!/bin/bash` on first line for a bash script file
- `[sudo] ./{script}` to run the script, need sudo depending if it needs superuser permissions
  
### Ruby
- `gem install bundler` installing bundler with ruby
- `bundle` installs ruby dependencies

### **VM**

### Dependencies
- `sudo apt install python-software-properties`
- `curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -`
- `sudo apt-get install -y nodejs`
- `sudo npm install pm2 -g`

### App
inside the app folder
- `npm install`
- `npm start`
- `npm install forever -g && forever start app.js` to `npm start` as a daemon



