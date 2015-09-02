class performance::sysctl {

  file { '/etc/sysctl.conf':
    owner   => 'root',
    group   => 'root',
    mode    => 0644,
    source  => 'puppet:///modules/performance/sysctl',
  }
}
