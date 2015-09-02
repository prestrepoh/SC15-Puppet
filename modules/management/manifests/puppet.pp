class management::puppet {

  $min1 = fqdn_rand(14)
  $min2 = $min1+15
  $min3 = $min2+15
  $min4 = $min3+15
  
  file { '/etc/puppet/puppet.conf':
    owner   => 'root',
    group   => 'root',
    mode    => 0644,
    source  => 'puppet:///modules/management/puppet.conf',
  }

  cron { puppetrun:
    command => 'puppet apply /etc/puppet/manifests/site.pp',
    user    => root,
    minute  => [$min1,$min2,$min3,$min4],
  }

  service { 'puppet':
    ensure  => 'stopped',
  }
}
