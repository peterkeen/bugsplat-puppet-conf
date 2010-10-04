#!/bin/bash

set -e
set -x

export PATH="/sbin:/usr/sbin:/bin:/usr/bin:/usr/local/bin:/usr/local/sbin"

apt-get -y install git-core
apt-get -y install puppet
apt-get -y install apache2

rm -rf /etc/puppet

git clone git://github.com/peterkeen/bugsplat-puppet-conf /etc/puppet

puppet_commad="puppet --modulepath /etc/puppet/modules:/etc/puppet/services --logdest syslog -v /etc/puppet/manifests/site.pp"

$puppet_command
$puppet_command
$puppet_command
$puppet_command
