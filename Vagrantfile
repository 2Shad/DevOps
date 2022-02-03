Vagrant.configure("2") do |config|
  config.vm.define "app" do |app|
    app.vm.box = "ubuntu/xenial64"
  
    # creating a private network with ip
    app.vm.network "private_network", ip: "192.168.10.100"
  
    # uploads and execute provision.sh relative to Vagrantfile
    app.vm.provision "shell", path: "sync/provision.sh"  

    # optional if file syncing is needed
    app.vm.synced_folder "sync/", "/home/vagrant/app"
  end
  config.vm.define "db" do |db|
    db.vm.box = "ubuntu/xenial64"
    db.vm.network "private_network", ip: "192.168.10.150"
  end
end