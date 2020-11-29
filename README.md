# vagrant-libvirt-ubuntu-bionic-ansible-lab

## Setup

This script for Ubuntu 18.04 Bionic only install :

- Libvirt/Qemu/KVM
- Vagrant and several plugins
- Packer
- Terraform with libvirt-provider
- Ansible

```bash
git clone https://github.com/goffinet/vagrant-libvirt-ubuntu-bionic-ansible-lab.git
cd vagrant-libvirt-ubuntu-bionic-ansible-lab
./setup.sh
reboot
```

## Lab managed by Ansible

To provide a topology of three nodes controlled by Ansible.

```bash
cd lab
vagrant up
ansible -m ping all
```

![](https://lucid.app/publicSegments/view/9175d49c-c39c-4446-b245-b9e6829dc57a/image.png)
