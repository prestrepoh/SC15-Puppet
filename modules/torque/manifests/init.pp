class torque {
  package { 'libxml2':
    ensure => present,
  }

  package { 'torque':
    ensure => 'installed',
    source => 'torque-4.1.7-1.adaptive.el6.x86_64.rpm',
    provider => 'rpm',
  }	
}
