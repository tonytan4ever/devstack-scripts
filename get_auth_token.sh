#!/bin/bash

# get a value for X-Auth-Token in a devstack box
export OS_USERNAME=admin
export OS_AUTH_URL=http://localhost:35357

# cd into your devstack directory
source openrc admin admin

openstack token issue