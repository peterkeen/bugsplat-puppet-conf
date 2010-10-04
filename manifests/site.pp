Package {
  provider => aptitude
}

Exec {
  path => "/usr/bin:/usr/sbin:/bin:/sbin"
}

node default {
  cron { puppet_update:
    command => "cd /etc/puppet && git pull origin master && puppet --modulepath /etc/puppet/modules:/etc/puppet/services --logdest syslog -v /etc/puppet/manifests/site.pp",
    user => 'root'
  }

  include s_bugsplat_www
}
