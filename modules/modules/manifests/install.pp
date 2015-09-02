class modules::install {
  package { 'environment-modules':
    ensure => 'present',
  }
}
