define mv_network::config::hosts ($hosts) {
	
	# Subnetwork config - with frontend + mail + puppet
    file { "/etc/hosts": 
        ensure => file,
        mode => "0644",
        owner => 'root',
        group => 'root',
		content => template("mv_network/hosts.erb"),
    }
}