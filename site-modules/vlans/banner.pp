banner { "default":
  motd => 'This message has been set by Puppet',
}

ios_network_dns {"DNSSettings":
  ensure           => present,
  domain           => 'puppet.demo',
  servers          => ['192.168.25.110'],
  ip_domain_lookup => true,
}
