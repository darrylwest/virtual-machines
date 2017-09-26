# Virtual Machines

_Starter files for creating virtual machine development envirnonments._

## Centos7 Java/Sprint Development Environment

The VM includes the following:

* Java JDK8 (1.8.0_144)
* Groovy 2.4.x
* Gradle 4.2
* Maven 3.5.0
* Docker 17.07.0-ce
* gcc 2.8.5
* clang 3.4.2
* node.js 8.5.0
* npm 5.3

The VM includes alpine container images with lyft/envoy proxy, openjdk/jre8, node and a golang image of unique-tcp to generate unique IDs.  There is a workspace shared with the host machine at /opt/workspace to enable edits from the host and builds from the VM.

###### darryl.west | 2017.09.26
