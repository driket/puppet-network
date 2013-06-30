# Set up cgroups.
class mv_network::config::cgroup {
	
  file { '/dev/cgroup':
    ensure => directory,
  }

  mount { '/dev/cgroup':
    require => File['/dev/cgroup'],
    device  => cgroup,
    ensure  => mounted,
    fstype  => cgroup,
    options => "rw",
  }
}
