Package {
  provider => aptitude
}

cron { puppet-update:
  command => "cd /etc/puppet && git pull origin master && puppet -v /etc/puppet/manifests/site.pp",
  user => 'root'
}

  

