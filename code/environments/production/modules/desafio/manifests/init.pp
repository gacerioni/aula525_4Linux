class desafio {

  case $::osfamily {
   
    "RedHat": {
      $pacotes = ["epel-release","git","cronie","httpd"]
     }

    "Debian": {
      $pacotes = ["git","cron","apache2"]
    }
  }

  $users = ["devops","jorge","judith"]
  
  package { $pacotes:
    ensure => present
  }
  
  user { $users:
    ensure => 'present',
    shell  => '/bin/bash',
  }

  file { '/root/.bashrc':
    ensure => 'file',
    source => "puppet:///modules/desafio/bashrc",

  }

}
