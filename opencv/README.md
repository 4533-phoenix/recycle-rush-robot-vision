# OpenCV

The following will build a cross-compiled version of OpenCV.  This is required to peform robot vision analysis on the RaspberryPi.

## Build

### Requirements

* virtualbox 
* vagrant

### Build

```
# The base box only needs to be added once.
$> vagrant box add ubuntu/trusty64

# Provision virtual build environment
$> vagrant up

# Build OpenCV
$> vagrant ssh -c /vagrant/build 
```

The result of the build will be ```./build/opencv-4.2.10.tar.gz```

## Install

```
$> scp ./build/opencv-2.4.10.tar.gz <rpi-user>@<rpi-ip-address>:<rpi-user-home-directory> 
```

SSH to RaspberryPi
```
$> mkdir /opt/opencv
$> mv opencv-2.4.10.tar.gz /opt/opencv
$> cd opencv
$> tar -zxvf opencv-2.4.10.tar.gz
```
