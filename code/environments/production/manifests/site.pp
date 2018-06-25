node 'default' {
  include config
  include desafio
}

node 'docker.dexter.com.br' {
  include docker
}
