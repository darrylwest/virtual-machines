# Raptor/RIDE Development

_Based on ubuntu/trusty64 (v14) with gnome 2..._

### Startup

_This assumes that you have [vagrant installed](https://www.vagrantup.com/downloads.html) on your mac..._

First clone the repo from git@github.corp.ebay.com:darwest/vagrant-java-dev.git then do this...

1. vagrant up
2. vagrant ssh
3. startxfc4 &

At this point, the desktop should display and git, JDK8 and Luna are installed.  You can now install the RIDE IDE and other optional packages, e.g., gradle, groovy etc.

### Other optional installations

* maven
* groovy 2.3
* gradle 4
* go 1.9

###### darryl.west | 2017.09.28
