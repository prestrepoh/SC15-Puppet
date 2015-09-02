#=Define: Performance
#
# Parts of the OS that could affect the performance of the cluster
# 
# ==Packages Installed: 
#
# ==Files and Folders Modified:
# /etc/sysctl.conf
# 
# ==Classes Called:
# * Class[performance::sysctl]          Manages /etc/sysctl.conf
#
class performance {
  class { 'performance::sysctl': }
}
