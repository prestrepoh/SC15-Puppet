#=Define: Management
#
# Backend Management, no need to have seperate classes for these
# since only a select few will be modifying them
# 
# ==Packages Installed: 
# *Package[sudo]
#
# ==Files and Folders Modified:
# /etc/hosts
# /etc/puppet
# /etc/yum.repos.d/*
# /etc/sudoers
# 
# ==Classes Called:
# * Class[management::hosts]        Manages host file
# * Class[management::ntp]          Manages automatic NTP
# * Class[management::puppet]       Manages puppet.conf
# * Class[management::repos]        Manages repositories
# * Class[management::sudo]         Manages sudoers file
#
class management {
  class { 'management::hosts': }
  class { 'management::ntp': }
  #class { 'management::puppet': }
  #class { 'management::repos': }
  class { 'management::sudo': }
  class { 'management::rclocal': }
  class { 'management::services': }
}
