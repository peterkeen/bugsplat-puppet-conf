Package {
  provider => aptitude
}

package { "apache2":
  ensure => present
}

package { "postfix":
  ensure => present
}
