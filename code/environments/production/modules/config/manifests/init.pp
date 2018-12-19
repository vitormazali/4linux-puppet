class config {

  $pacotes=["vim","net-tools","telnet"]

  package { $pacotes:
    ensure => present
  }

  file { '/etc/puppetlabs/puppet/puppet.conf':
    source => 'puppet:///modules/config/puppet.conf',
    ensure => present
  }

}
