Multi-VM Ubuntu & CentOS Vagrantfile
====================================

This repository contains a Vagrantfile for setting up a multi-VM development environment using Vagrant. The configuration provisions one CentOS 7 virtual machine (web01) containing a sample website and Ubuntu 20.04 virtual machine (web02) containing Wordpress, each with private and public networking. It is suitable for DevOps learning, infrastructure testing, or team development.

Requirements
------------

- Vagrant (tested with version 2.x)
- VirtualBox or another compatible provider

VM Overview
-----------

- **web01**: CentOS 7 – intended as the sample web server
- **web02**: Ubuntu 20.04 – intended as the Wordpress server

Usage
-----

1. Clone this repository:
    git clone https://github.com/Reeshaaaa/MultiVM-Vagrantfile
    cd multivm

2. Start all virtual machines:
    vagrant up

3. Run the websites:
    web01 - 192.168.56.51
    web02 - 192.168.56.52
    If the IP adresses match IP of some of your devices, make sure you change it.

Known Issues & Troubleshooting
-----------------------------

- Bridged networking may not work reliably on Windows, especially if both Hyper-V and VirtualBox are enabled (it is recommended to disable Hyper-V).
- SSH may occasionally fail on first boot – try `vagrant reload` if this happens.
- If a VM hangs on boot, try using only NAT/private_network and avoid public_network unless specifically needed.

Author
------

Richard Fousek