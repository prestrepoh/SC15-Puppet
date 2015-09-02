class torque::client {
  package { 'torque-client':
    ensure => 'installed',
    source => 'torque-client-4.1.7-1.adaptive.el6.x86_64.rpm',
    provider => 'rpm',
    require => Package['torque']
  }

  service { "pbs_mom":
    ensure  => "running",
    enable  => "true",
    require => [Package["torque-client"]],
   # subscribe => Exec["set-hostname-to-dns"],
  }

  file { '/var/spool/torque/mom_priv/config':
    #content => "\$pbsserver goethe-0.rcac.purdue.edu
    #\$usecp *:/home /home\n",
    source  => 'puppet:///modules/torque/config',
    require => Package['torque-client'],
    notify  => Service["pbs_mom"]
  }
}
