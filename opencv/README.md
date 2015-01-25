## Build

### Requirements

* virtualbox
* vagrant

### Build

'''
$> vagrant up
$> vagrant ssh -c /vagrant/build 
'''

## Install

'''
$> scp ./build/opencv-2.4.10.tar.gz <rpi-user>@<rpi-ip-address>:<rpi-user-home-directory> 
'''

SSH to RaspberryPi
'''
$> mkdir /opt/opencv
$> mv opencv-2.4.10.tar.gz /opt/opencv
$> cd opencv
$> tar -zxvf opencv-2.4.10.tar.gz
'''

