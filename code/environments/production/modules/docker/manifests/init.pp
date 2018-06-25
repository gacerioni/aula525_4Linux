class docker {

  $pacotes = ['apt-transport-https','ca-certificates','curl','software-properties-common']

  package { $pacotes:
    ensure => present 

  }

  exec { 'curl':
    command => 'curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -',
    path => '/usr/bin/'
  }

  exec { 'add rpt':
    command => 'sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable"',
    path => '/usr/bin/'
  }

  exec { 'apt-get update -y':
    command => 'apt-get update -y',
    path => '/usr/bin/'
  }

  package { 'docker-ce':
    ensure => present,
    install_options => ['--allow-unauthenticated', '-f'],

  }

}
