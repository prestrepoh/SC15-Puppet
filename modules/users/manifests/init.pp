#=Define: Users
#
# Users are defined here, add them in users.pp, make sure
# to follow the standards set for pre-encrypted passwords
#
# ==Files and Folders Modified:
# /ssd/{$USER}
# 
# ==Classes Called:
# * Class[users:users]  Manages users
#

class users {
  class { 'users::users': }
}
