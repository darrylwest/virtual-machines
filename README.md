# Virtual Machines

_Starter files for creating virtual machine development envirnonments._


## Debian 9

bento/debian: 

```
mkdir debian-9 \
    && cd debian-9 \
    && vagrant init bento/debian-9.6 --box-version 201812.27.0

# edit Vagrant file as needed...
vagrant up

```

* erlang 20/21
* elixir 
* rabbitmq

## Centos7 Java/Sprint Development Environment

The VM includes the following:

* Java JDK8 (1.8.0_144)
* Groovy 2.4.x
* Gradle 4.2
* Maven 3.5.0
* Docker 17.07.0-ce
* gcc 2.8.5
* clang 3.4.2
* node.js 8.6.0
* npm 5.3

The VM includes alpine container images with lyft/envoy proxy, openjdk/jre8, node and a golang image of unique-tcp to generate unique IDs.  There is a workspace shared with the host machine at /opt/workspace to enable edits from the host and builds from the VM.

## References

* [Bento Boxes](https://app.vagrantup.com/bento)
* [Vagrant](https://www.vagrantup.com/)
* [Virtual Box](https://www.virtualbox.org/)

###### darryl.west | 2019.01.20
