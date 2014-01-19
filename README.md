## About

Automatically compile pokenum.so for PHP use, and create a dev environment for pokersource on Ubuntu 12.04 via vagrant.

## Disclaimer

The supplied Vagrantfile assumes ubuntu/debian and only tested against ubuntu 12.04 -- Sorry.

## Usage

First, some assumptions: I'm assuming (all i've tested): 

* OSX 10.9 (Mavericks)
* VirtualBox 4.3.6
* Ubuntu 12.04 guest (precise)
* vagrant 1.4.2 installed 

my `vagrant box list` looks like this: 

```
centos_6.4     (virtualbox)
lucid32        (virtualbox)
precise32      (virtualbox)
precise64      (virtualbox)
ubuntu-lucid64 (virtualbox)
```


Basically, run vagrant against the supplied `Vagrantfile`. 
```
mkdir -p ~/vagrant/pokenum-in-a-box
cd ~/vagrant/pokenum-in-a-box
git clone https://github.com/j-c-h-e-n-g/pokenum-in-a-box.git
vagrant up
now ssh in
vagrant ssh
```
