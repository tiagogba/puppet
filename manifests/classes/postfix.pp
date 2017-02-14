class postfix {
 
	# declarando pacote postfix
 
	package { "postfix":
		ensure => present,
	}
 
        # declarando arquivo de configuração main.cf
 
	file { '/etc/postfix/main.cf':
		ensure  => present,
                source  => "puppet:///files/postfix/main.cf",
		notify  => Service["postfix"],
		require => Package["postfix"],
	}
 
        # declarando serviço postfix
 
	service { "postfix":
		ensure     => running,
		enable     => true,
		hasrestart => true,
		hasstatus  => true,
		require    => Package['postfix'],
	}
 
}
