class management::ntp {

  service { 'ntpd':
    ensure  => 'running',
  }

  package { 'ntp':
    ensure => 'present',
  }
}
