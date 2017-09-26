# Centos7 Vagrant Install/Use Notes

## The Basics
vagrant init bento/centos-7.3

### start up
vagrant up [--provider virtualbox]

### connect to it
vagrant ssh
ssh dpw@192.168.33.10 or ssh dpw@centos

### stop and leave in virualBox
vagrant halt

### stop and destroy it (remove from virualBox)
vagrant destroy

### insure file sync
vagrant rsync-auto

### snapshot backups
vagrant snapshot list

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

###### darryl.west | 2017.09.22

