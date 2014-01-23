# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

# for those of you unfamiliar w/ chef-solo runs, this will run whatever is in 
# ~/cookbooks/pokenum/recipe/default.rb
$script = <<SCRIPT

if [ ! -f /usr/local/bin/chef-solo ]; then 
  apt-get update
  echo "chef not found! installing chef ..."
  apt-get -y install rubygems
  gem install chef --no-ri --no-rdoc
fi

SCRIPT

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  
  config.vm.box_url = "http://dl.dropbox.com/u/1537815/precise64.box"
  
  config.vm.box = "precise64"

  config.vm.provision :chef_solo do |chef|
     chef.cookbooks_path = "./cookbooks"
     chef.add_recipe "pokenum"

   end

end
