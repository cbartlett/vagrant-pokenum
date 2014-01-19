# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

$script = <<SCRIPT
echo installing pokenum related packages...
apt-get update
apt-get -y install php5-dev git libpoker-eval libpoker-eval-dev

git clone https://github.com/j-c-h-e-n-g/pokenum-php.git
cd pokenum-php
phpize
./configure --enable-pokenum
make
make install
SCRIPT

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "precise64"
  config.vm.provision "shell", inline: $script

end
