#=Define: NFS
#
# Define the NFS mount for the cluster
# This has to be in a seperate package 
# because zydeco-1 can't mount itself
# 
# ==Packages Installed: 
# *Package[nfs-common]
#

class nfs::client {
  
  package { 'nfs-utils':
    ensure  => present,
  }

  service { 'rpcbind':
    ensure  => 'running',
    require => Package['nfs-utils'],
  }

  file { '/ssd':
    ensure  => 'directory',
    owner   => 'root',
    group   => 'root',
    mode    => 0755,
  }

  file { '/ssd/home':
    ensure  => 'directory',
    owner   => 'root',
    group   => 'root',
    mode    => 0755,
    require => File['/ssd'],
  }

  mount { '/ssd':
    device  => '192.168.56.2:/ssd',
    fstype  => 'nfs',
    ensure  => 'mounted',
    options => 'defaults',
    #options => 'noatime,nodev,intr,udp,nosuid,vers=3,hard,bg,rsize=131072,wsize=524288,timeo=60,retrans=2',
    atboot  => 'true',
  }

}
