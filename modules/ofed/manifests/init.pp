class ofed {
 exec { "start_mellanox_ofed":
        command => "/usr/sbin/opensm --daemon"

        # Here you could also use require
        # require       => Package["mysql-server"]

        # Another important feature would be setting the path variable
        # path  => "/usr/local/bin:/bin/"  
 }
}
