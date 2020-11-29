#!/bin/bash
cd /data
git clone https://github.com/goffinet/windows-domain-controller-vagrant
cd /data/windows-domain-controller-vagrant
vagrant up
cd test-nodes
vagrant up