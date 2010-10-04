#!/bin/bash

set -e
set -x

apt-get -y install git-core
apt-get -y install puppet

rm -rf /etc/puppet

git clone git://github.com/peterkeen/bugsplat-puppet-conf /etc/puppet

puppet_commad="puppet --modulepath /etc/puppet/modules:/etc/puppet/services --logdest syslog -v /etc/puppet/manifests/site.pp"

$puppet_command
$puppet_command
$puppet_command
$puppet_command
