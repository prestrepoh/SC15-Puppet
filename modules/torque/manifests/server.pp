#Installs and configures Torque server
class torque::server {

package { 'torque-server':
    ensure => 'installed',
    source => 'torque-server-4.1.7-1.adaptive.el6.x86_64.rpm',
    provider => 'rpm',
    require => Package['torque']
  }

  package { 'torque-scheduler':
    ensure => 'installed',
    source => 'torque-scheduler-4.1.7-1.adaptive.el6.x86_64.rpm',
    provider => 'rpm',
    require => Package['torque']
  }


  service { "pbs_server":
    ensure  => "running",
    enable  => "false",
    require => [Package["torque-server"], File['/var/spool/torque/checkpoint/']]
  }

 service { "pbs_sched":
   ensure  => "running",
    enable  => "true",
    require => [Package["torque-scheduler"]]
  }

  file { '/var/spool/torque/server_priv/nodes':
    #content => "goethe-0.rcac.purdue.edu np=28\n",
    source  => 'puppet:///modules/torque/nodes',
    require => Package['torque-server'],
    notify => Service['pbs_server'],
  }

  file { '/var/spool/torque/checkpoint/':
    ensure => 'directory',
    require => Package["torque-server"]
  }
}
