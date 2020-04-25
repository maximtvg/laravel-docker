# VM ip address

ip = "192.168.10.10"

Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/bionic64"
    config.vm.network "private_network", ip: ip
    config.vm.provider "virtualbox" do |vb|
        vb.memory = "2048"
    end

    config.vm.synced_folder ".", "/vagrant", disabled: true
    config.vm.synced_folder "./", "/var/www/appspace", create: true
	config.vm.provision "shell", path: "./prerequisites/docker.sh"
end
