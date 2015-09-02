class management::hosts {

  file { '/etc/hosts':
    owner   => 'root',
    group   => 'root',
    mode    => 0664,
    source  => 'puppet:///modules/management/hosts',
  }
}
