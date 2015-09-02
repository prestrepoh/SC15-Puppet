#=Define: NFS
#
# Define the NFS mount for the cluster
# 
# ==Packages Installed: 
# *Package[nfs-common]
#

class nfs::server {
  
  package { 'nfs-utils':
    ensure  => present,
  }

  service { 'rpcbind':
    ensure  => 'running',
    require => Package['nfs-utils'],
  }

  service { 'nfs':
    ensure  => 'running',
    require => Service['rpcbind'],
  }

  file { '/ssd/home':
    ensure  => 'directory',
    owner   => 'root',
    group   => 'root',
    mode    => 0755,
  }

  file { '/etc/exports':
    owner   => 'root',
    group   => 'root',
    mode    => 0664,
    source  => 'puppet:///modules/nfs/exports',
  }

}
