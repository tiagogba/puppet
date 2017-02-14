class teste { 
file { "/tmp/README":
	ensure => present,
        source => "puppet:///files/teste/README",
    }
}
