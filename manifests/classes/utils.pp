class utils { 
 
	# declarando que o tzdata tem que estar sempre em sua ultima versao
 
	package { 'tzdata': ensure => latest }
 
	# declarando que os seguintes pacotes devem estar presentes (sysadmin packages)
 
	package { [ 'screen',
		'elinks',
		'rsync',
		'telnet',
		'ftp',
		'wget',
		'bzip2',
		'unzip',
		'traceroute',
		'tcpdump',
		'less',
		'nmap', ]:
		ensure  => installed,
	}
 
}
