class management::sudo {
  package { 'sudo':
    ensure  => present,
  }

  file { '/etc/sudoers':
    owner   => 'root',
    group   => 'root',
    mode    => 0440,
    source  => 'puppet:///modules/management/sudoers',
    require => Package['sudo'],
  }
}
