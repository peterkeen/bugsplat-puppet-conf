#!/bin/sh

set -e
set -x

apt-get -y install git
apt-get -y install puppet

rm -rf /etc/puppet

git clone http://github.com/peterkeen/bugsplat-puppet-conf /etc/puppet

puppet -v /etc/puppet/manifests/site.pp