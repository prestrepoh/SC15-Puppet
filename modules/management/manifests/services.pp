class management::services {

  service { 'iptables':
    ensure  => 'stopped',
  }

  exec { "stop_selinux":
	command	=> "/usr/sbin/setenforce 0"

	# Here you could also use require
	# require	=> Package["mysql-server"]
	
	# Another important feature would be setting the path variable
	# path	=> "/usr/local/bin:/bin/"
  }
}
