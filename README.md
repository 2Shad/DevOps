> install markdown extensions `All in one`
# what is DevOps
## why DevOps
### Benefits of DevOps

**Four pillars of DevOps best practice**
- Ease of Use
- Flexibility
- Robustness - Faster delivery of product
- Cost - cost effective

### Monolith - 2 tier & Microservices Architectures


### Deployment

```
Vagrant.configure("2") do |config|

 # creating a virtual machine ubuntu 
 config.vm.box = "ubuntu/xenial64"
 # creating a private network with ip
 config.vm.network "private_network", ip: "192.168.10.100"

end
```
- create a VM `vagrant up`
- check status `vagrant status`
- delete VM `vagrant destroy`
- pause `vagrant halt`
- To update `vagrant reload`

# Virtual Machines
## **Requirements**
#### [Install Ruby](https://github.com/oneclick/rubyinstaller2/releases/download/RubyInstaller-2.6.6-1/rubyinstaller-devkit-2.6.6-1-x64.exe)
#### [Install Vagrant](https://www.vagrantup.com/)
#### [Install VirtualBox](https://www.virtualbox.org/wiki/Downloads)

## **Vagrant**
### Commands:
- initialize vagrant with Vagrantfile `vagrant init`
- after configuring vagrantfile, deploy the VM `vagrant up`
- check status `vagrant status`
- delete VM `vagrant destroy`
- pause VM `vagrant halt`
- update VM `vagrant reload`
- access VM through SSH `vagrant ssh`

### Vagrantfile

## **Linux**
In Ubuntu we have the `apt` Package manager formerly known as `apt-get`.
#### Commands:
- super user do `sudo`
- update package repository `sudo apt update`
- upgrade packages `sudo apt upgrade`
- install a package through apt `sudo apt install`
- remove VM `sudo apt remove`
- systemctl `systemctl status/restart/start/stop`