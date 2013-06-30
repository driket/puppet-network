# configuer le produit ici
class mv_network::params {

	$packages = ""
	$service_name = ""
	$config_path = ""
	
	# set ip forward to specific guests (frontend, mail, puppet, etc.) 
	$forwarding_rules = {
		www => 		{ ip => "192.168.2.3", 	port => "80"},
		https => 	{ ip => "192.168.2.3", 	port => "443"},
		smtp => 	{ ip => "192.168.2.4", 	port => "25"},
		ssmtp =>	{ ip => "192.168.2.4", 	port => "465"},
		imap2 =>	{ ip => "192.168.2.4", 	port => "143"},
		imaps =>	{ ip => "192.168.2.4", 	port => "993"},
		submission =>{ip => "192.168.2.4", 	port => "587"},
		8140 => 	{ ip => "192.168.2.5", 	port => "8140"},
	}
	$inputs = {
		icmp =>		{ interface => "eth0", 	port => "icmp",	action => "ACCEPT"},
		ssh =>		{ interface => "eth0", 	port => "21",	action => "ACCEPT"},
		www => 		{ interface => "eth0", 	port => "80",	action => "ACCEPT"},
		https => 	{ interface => "eth0", 	port => "443",	action => "ACCEPT"},
		smtp => 	{ interface => "eth0", 	port => "25",	action => "ACCEPT"},
		ssmtp =>	{ interface => "eth0", 	port => "465",	action => "ACCEPT"},
		imap2 =>	{ interface => "eth0", 	port => "143",	action => "ACCEPT"},
		imaps =>	{ interface => "eth0", 	port => "993",	action => "ACCEPT"},
		8140 => 	{ interface => "eth0", 	port => "8140",	action => "ACCEPT"},
	}
}
