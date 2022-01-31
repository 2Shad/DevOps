$script = <<-'SCRIPT'
sudo apt update && sudo apt upgrade -y
sudo apt install -y nginx
SCRIPT

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"
  # creating a private network with ip
  config.vm.network "private_network", ip: "192.168.10.100"
  
end
