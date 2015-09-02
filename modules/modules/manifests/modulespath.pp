class modules::modulespath {

  file { '/usr/share/Modules/init/.modulespath':
    owner   => 'root',
    group   => 'root',
    mode    => 0664,
    source  => 'puppet:///modules/modules/.modulespath',
  }
}

