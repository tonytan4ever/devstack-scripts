#!/bin/bash
#!/bin/bash
cd /media/sf_Rackspace/devstack/
source openrc

# External network
. openrc admin
neutron net-create ext-net --router:external True --provider:physical_network external --provider:network_type flat
# Subnet on External Network
neutron subnet-create ext-net --name ext-subnet --allocation-pool start=192.168.100.101,end=192.168.100.200 --disable-dhcp --gateway 192.168.100.1 192.168.100.0/24

# Tenant(private) network
. openrc demo
neutron net-create demo-net
neutron subnet-create demo-net --name demo-subnet --gateway 192.162.1.1 192.162.1.0/24

# Router
neutron router-create demo-router
neutron router-interface-add demo-router demo-subnet
neutron router-gateway-set demo-router ext-net
