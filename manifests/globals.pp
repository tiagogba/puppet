# definindo provedores para alguns sistemas
 
case $operatingsystem {
    'Debian': {
        Package { provider => 'aptitude' }
    }
    'RedHat': {
        case $operatingsystemrelease {
            '7.2'    : {
                Package { provider => 'upgrade' }
            }
        }
    }
}
 
# Definindo configurações do filebucket
 
filebucket { 'main':
  server => puppet,
  path   => false,
  # Due to a known issue, path must be set to false for remote filebuckets.
}
 
# Especificando o target default do filebucket
# Aqui declaro que os nodes devem arquivar os arquivos modificados no puppetmaster.
 
File { backup => main }
