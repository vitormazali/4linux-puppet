class web {

  case $::osfamily {

    "RedHat": {
      $pacote=["httpd"]
    }

    "Debian": {
      $pacote=["apache2"]
    }

  }

  package { $pacote:
    ensure => present,
  }

  service { $pacote:
    ensure => running,
    enable => true
  }

}
