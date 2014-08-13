## Quick Start 

Do a `vagrant up` in the same directory as `VagrantFile`.


## Assumptions

Vagrant launches a ubuntu 12.04 guest and then calls chef-solo. Specifically the following were used:

* OSX 10.9 (Mavericks)
* VirtualBox 4.3.6
* Ubuntu 12.04 guest (precise)
* vagrant 1.4.2 installed 
* Chef 10.8.2 (on guest host installed via Vagrant)

## About

For whatever reason(s), you may have always has the burning desire to have your own twodimes.net calculator (http://twodimes.net/poker/). But there's been a barrier to entry for this. In the past you'd have to: 

* install linux (via a vagrant box)
* hunt down and install pokersource (`apt-get install libpoker-eval libpoker-eval-dev`)
* create a PHP shared object (compile it to a `pokenum.so` file)
* configure php.ini 

... this does the above. Now you can automatically top into pokenum results as a PHP array. 


## Why 

Why not? 

... well if I have to explain, I simply want my own pokenum to tinker with. Tinkering is the reason.


## Usage

Run vagrant against the supplied `Vagrantfile`. The chef-solo run is straightforward/simple but for those unfamiliar with chef, Vagrant will do a chef-solo run against `~/cookbooks/pokenum/recipes/default.rb`:

```
git clone https://github.com/j-c-h-e-n-g/pokenum-in-a-box.git
vagrant up
# now ssh in
vagrant ssh
# now that you're vagrant user in ssh
sudo php /tmp/test.php
```
...and you should see this output: 

```
Array
(
    [name] => Holdem Hi
    [players] => 2
    [iterations] => 100000
    [hands] => Array
        (
            [0] => Array
                (
                    [hand] => Array
                        (
                            [0] => Ac
                            [1] => Ah
                        )

                    [win] => 81742
                    [lose] => 17778
                    [tie] => 480
                    [ev] => 0.81982
                )

            [1] => Array
                (
                    [hand] => Array
                        (
                            [0] => Kc
                            [1] => Kd
                        )

                    [win] => 17778
                    [lose] => 81742
                    [tie] => 480
                    [ev] => 0.18018
                )

        )

)
```

...but wait, Hold'em sucks! Omaha is the game of the future. Let's run this instead: 


```
ini_set("enable_dl", 1) ;
dl("pokenum.so");
print_r(pokenum(PN_OMAHA, array('Ah Ac Kd Kc', 'Jd Qd Tc 9c')));
```

... and it's output will be something like: 

```
Array
(
    [name] => Omaha Hi
    [players] => 2
    [iterations] => 100000
    [hands] => Array
        (
            [0] => Array
                (
                    [hand] => Array
                        (
                            [0] => Ac
                            [1] => Kc
                            [2] => Kd
                            [3] => Ah
                        )

                    [win] => 61511
                    [lose] => 38471
                    [tie] => 18
                    [ev] => 0.6152
                )

            [1] => Array
                (
                    [hand] => Array
                        (
                            [0] => Tc
                            [1] => 9c
                            [2] => Qd
                            [3] => Jd
                        )

                    [win] => 38471
                    [lose] => 61511
                    [tie] => 18
                    [ev] => 0.3848
                )

        )

)
```


## Todo

* The supplied `Vagrantfile` assumes ubuntu/debian and only tested against ubuntu 12.04
* install apache
* add some sort of mechanism to provide a choice of which os, webserver
* feed this into packer.io (or whatever the way it is) so you can have an AMI or VMDK outputted also
