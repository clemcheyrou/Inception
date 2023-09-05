
Vagrant.configure("2") do |config|
  config.vm.box = "archman/debian-12-gnome"
  config.vm.box_version = "1.0.0"
  
    config.vm.provider "virtualbox" do |vb|
      vb.gui = true
      vb.memory = "1024"
    end
  
    # Provisioning with a shell script
    config.vm.provision "shell", privileged: true, path: "./scripts/setup.sh"
    config.vm.synced_folder "~/inception", "/home/inception"
  end
