Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"

  config.vm.provider "virtualbox" do |v|
    v.name = "wg_test"
  end

  config.vm.provision "shell", 
    path: "yum.sh",
    run: "always"

  config.vm.provision "puppet"
  
end
