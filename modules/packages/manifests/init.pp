#=Define: Packages
#
# Mass package installer
#
# ==Packages Installed:
# Specified below
#

class packages {
  Package { ensure => 'installed' }
  package { 'wget': }
  package { 'emacs': }
  #package { 'htop': }
  package { 'gcc-c++': }
  package { 'git': }
  package { 'make': }
  package { 'rsync': }
  package { 'vim-enhanced': }
  package { 'tcsh': }
  package { 'zsh': }
  package { 'epel-release': }
  package { 'htop':
    require => Package['epel-release'],
  }
  package { 'ipmitool': }
  package { 'cmake': }
  package { 'hdf5': }
  package { 'hdf5-devel': }
  package { 'bison': }
  package { 'bison-devel': }
  package { 'libjpeg-turbo-devel': }
  package { 'libjpeg-turbo': }
  package { 'libpng': }
  package { 'libpng-devel': }
  package { 'hwloc': }
  package { 'hwloc-devel': }
  package { 'flex':  }
  package { 'flex-devel':  }
  package { 'time':  }
  package { 'mlocate':  }
  package { 'ncurses-devel':  }
}
