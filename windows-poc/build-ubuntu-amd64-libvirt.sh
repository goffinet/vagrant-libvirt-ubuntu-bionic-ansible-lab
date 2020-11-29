#!/bin/bash
apt -y install p7zip-full vinagre spice-client-gtk git
mkdir /data
cd /data
git clone https://github.com/rgl/ubuntu-vagrant
cd ubuntu-vagrant
mkdir /data/tmp
export TMPDIR=/data/tmp
make build-libvirt
vagrant box add -f ubuntu-20.04-amd64 ubuntu-20.04-amd64-libvirt.box
#vagrant cloud auth login
#vagrant cloud publish goffinet/ubuntu-20.04-amd64-libvirt 1.0.0 libvirt ubuntu-20.04-amd64-libvirt.box -d "ubuntu-20.04-amd64-libvirt" --version-description "packer build" --release --short-description "ubuntu-20.04-amd64-libvirt packer build"