class s_bugsplat_www {
  include apache

  file { "/var/www/bugsplat.info" :
    ensure => directory,
    recurse => true,
    owner => 'ubuntu',
  }

  apache::vhost { "bugsplat.info":
    port => 80,
    docroot => '/var/www/bugsplat.info',
    priority => 10
  }
}