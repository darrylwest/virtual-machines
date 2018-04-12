# Centos7 Vagrant Install/Use Notes

## The Basics
vagrant init bento/centos-7.3

### start up
vagrant up [--provider virtualbox]

### connect to it
vagrant ssh

### stop and leave in virualBox
vagrant halt

### stop and destroy it (remove from virualBox)
vagrant destroy

### insure file sync
vagrant rsync-auto

### snapshot backups
vagrant snapshot list

### Create Sharable Box

_Make sure the box is running first..._
vagrant package --output automated-test-services-<vers>.box
## Installation Scripts

_See install-scripts_

### basic
sudo yum install epel-release -y

### development tools
sudo yum groupinstall 'Development Tools' -y

### golang

#### docker

### images loaded

### node 8

### envoy

### others (optional)

## References

* [vagrant + docker](https://www.vagrantup.com/docs/provisioning/docker.html)

###### darryl.west | 2018.04.03

