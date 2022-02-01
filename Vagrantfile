Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"
  
  # creating a private network with ip
  config.vm.network "private_network", ip: "192.168.10.100"
  
  # uploads and execute provision.sh relative to Vagrantfile
  config.vm.provision "shell", path: "sync/provision.sh"  

  # optional if file syncing is needed
  config.vm.synced_folder ".", "/home/vagrant/app"
  
end
