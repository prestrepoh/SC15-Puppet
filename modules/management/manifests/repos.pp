class management::repos {

  file { '/etc/yum.repos.d':
    ensure  => 'directory',
    owner   => 'root',
    group   => 'root',
    mode    => 0664,
    source  => 'puppet:///modules/management/repos/',
    recurse => true,
  }
}
