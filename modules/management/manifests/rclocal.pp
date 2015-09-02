class management::rclocal {

  file { '/etc/rc.d/rc.local':
    owner   => 'root',
    group   => 'root',
    mode    => 0755,
    source  => 'puppet:///modules/management/rc.local',
  }
}
