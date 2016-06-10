#!/bin/bash

# get a value for X-Auth-Token in a devstack box
export OS_USERNAME=admin
export OS_AUTH_URL=http://localhost:35357

openstack token issue