#=Define: Modules
#
# Environment Modules for the Cluster
# 
# ==Packages Installed: 
#  environment-modules
#
# ==Classes Called:
# * Class[modules::install]  Installs the package 
# * Class[modules::environment] Sets up the environment for modules
#
class modules {
  class { 'modules::install': }
  class { 'modules::environment': }
  class { 'modules::modulespath': }
}
