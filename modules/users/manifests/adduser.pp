define adduser ($name,$password,$shell,$uid) {

  $username = $title

  user { $username:
    ensure     => 'present',
    comment    => "$name's User Account Created By Puppet",
    gid        => $uid,
    home       => "/ssd/home/$username",
    managehome => true,
    membership => minimum,
    password   => $password,
    shell      => $shell,
    uid        => $uid,
  }

  group { $username:
    ensure => 'present',
    gid    => $uid,
  }

  file { "/ssd/home/$username/":
    ensure  => directory,
    owner   => $username,
    group   => $username,
    mode    => 750,
    require => [ User[$username], Group[$username] ],
  }
}
