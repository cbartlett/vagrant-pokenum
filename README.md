# About

Automatically compile pokenum.so for PHP use, and create a dev environment for pokersource on Ubuntu 12.04 via vagrant.


## Usage

First, some assumptions: I'm assuming (all i've tested): 

* OSX 10.9 (Mavericks)
* VirtualBox 4.3.6
* Ubuntu 12.04 guest (precise)
* vagrant 1.4.2 installed 

    mkdir -p ~/vagrant/pokenum-in-a-box; cd ~/vagrant/pokenum-in-a-box
    git clone https://github.com/j-c-h-e-n-g/pokenum-in-a-box.git
    vagrant up
    # now ssh in
    vagrant ssh
