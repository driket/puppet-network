define mv_network::config::interfaces ($fqdn = 'sd-21553.dedibox.fr',
								$address = '88.191.142.157', 
								$netmask = '255.255.255.0',
								$network = '88.191.142.0', 
								$broadcast = '88.191.142.255', 
								$gateway = '88.191.142.1',
								$template_file = 'network_interfaces.erb',) 
{
	require('mv_network')
	require('mv_network::packages')
	
	file { '/etc/network/interfaces': 
	
		ensure => file,
		content => template("mv_network/${template_file}"),
		mode => "0644",
		owner => 'root',
		group => 'root',
		#notify => Service['networking'],
		#notify => [Service['networking'],Exec['ifup_br0']],
    }
		
	service {'networking':
		#ensure => 'running',
		#refreshonly => true,
	} 

}