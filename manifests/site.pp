class base {
  #class { 'ganglia': }
  class { 'management': }
  class { 'modules': }
  class { 'packages': }
  class { 'users': }
  class {'torque': }
}

node goethe-0 {
  include base
  #class { "ganglia::server": }
  #class { "ganglia::webserver": }
  class { 'performance': }
  class { 'nfs::server': }
  class {'torque::server': }
  class {'torque::client': }
  class {'ofed': }
}

#node zydeco-1 {
 # include base
  #class { "ganglia::server": }
  #class { "ganglia::webserver": }
  #class { 'nfs::server': }
#}

#node zydeco-2, zydeco-3, zydeco-4, zydeco-5, zydeco-6, zydeco-7 {
node goethe-1, goethe-2, goethe-3, goethe-4, goethe-5, goethe-6 {
  include base
  class {'torque::client': }
  #class { "ganglia::client": }
  class { 'nfs::client': }
  class { 'performance': }
}
