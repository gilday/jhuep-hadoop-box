# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # instructor recommends CentOS 6.7
  config.vm.box = "bento/centos-6.7"
  config.vm.box_check_update = false
  config.vm.hostname = "hadoop" # instructor provides hostname in the instructions
  config.vm.network "public_network"

  config.vm.provider "virtualbox" do |v|
      v.name = "jhu-hadoop-dev"
      v.memory = 3072 # instructor recommends 3GB
      v.cpus = 2 # instructor recommends 2 cpu
      v.gui = false # run head-less by default with minimal installation
  end

  config.ssh.forward_agent = true
  config.ssh.forward_x11 = true

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  config.vm.synced_folder "../", "/project"
  

  # Ansible provisioner
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "ansible/provision.yml"
    ansible.extra_vars = {
      ansible_ssh_user: 'vagrant'
    }
  end
end
