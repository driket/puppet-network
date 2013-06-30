# Set up cgroups.
class mv_network::config::ip_masquerade {

	exec { "ip-masquerading":
	  command => "/sbin/iptables -t nat -A POSTROUTING -s 192.168.2.0/24 -o eth0 -j MASQUERADE",
	  unless => '/sbin/iptables -t nat -L POSTROUTING | grep "MASQUERADE.*192.168.2.0/24"'
	}

	file { "/proc/sys/net/ipv4/ip_forward":
		content => "1",
        mode => "0644",
        owner => 'root',
        group => 'root',
	}
}