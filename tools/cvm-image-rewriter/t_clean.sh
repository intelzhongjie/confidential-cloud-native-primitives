#!/bin/bash

sudo virsh undefine szj-tdx-guest
sudo virsh destroy szj-tdx-guest
sudo virsh list
sudo rm /tmp/libvirt-vms/szj-tdx-guest.qcow2
sudo rm /tmp/libvirt-vms/szj-tdx-guest.xml
sudo rm output.qcow2
