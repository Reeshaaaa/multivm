Vagrant.configure("2") do |config|
  # sample website
  config.vm.define "web01" do |web01|
    web01.vm.box = "eurolinux-vagrant/centos-stream-9"
    web01.vm.hostname = "web01"
    web01.vm.network "private_network", ip: "192.168.56.51"
    web01.vm.network "public_network"
    config.vm.provision "shell", path: "website.sh"

    config.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = 2
    end
  end

  # wordpress
  config.vm.define "web02" do |web02|
    web02.vm.box = "ubuntu/focal64"
    web02.vm.hostname = "web02"
    web02.vm.network "private_network", ip: "192.168.56.52"
    web02.vm.network "public_network"
    config.vm.provision "shell", path: "wordpress.sh"

    config.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = 2
    end
  end
end
