#!/bin/bash

set -e
set -x

apt-get -y install git-core
apt-get -y install puppet

rm -rf /etc/puppet

git clone git://github.com/peterkeen/bugsplat-puppet-conf /etc/puppet

puppet -v /etc/puppet/manifests/site.pp