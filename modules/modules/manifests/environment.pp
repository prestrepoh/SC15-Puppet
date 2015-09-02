class modules::environment {

  file { '/etc/environment':
    owner   => 'root',
    group   => 'root',
    mode    => 0664,
    source  => 'puppet:///modules/modules/environment',
  }
}

