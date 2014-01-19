## About

You, dear reader, might have always wanted the twodimes.net calculator (http://twodimes.net/poker/) for your own purposes. But there's been a barrier to entry for this. In the past you'd have to: 

* install linux
* hunt down and install pokersource
* create a PHP shared object
* configure your php.ini with that .so file

... pokenum-in-a-box (ok it's just a `Vagrantfile`) does the above. Now you can focus on the application. This empowers all those PHP developers who don't want to bother with the above. 



## Usage

Basically take the `vagrantfile` and do a `vagrant up` -- it could totally be true that putting this in github is overkill but I feel like it.

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

## Todo

The supplied `Vagrantfile` assumes ubuntu/debian and only tested against ubuntu 12.04 -- Sorry.
