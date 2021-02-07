# This file was automatically generated on 2021-02-07 14:46:27 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Configure DNS settings for network devices
Puppet::Resource::ResourceType3.new(
  'ios_network_dns',
  [
    # Whether the network dns should be present or absent on the target system. (a Enum[present, absent])
    # 
    # Valid values are `absent`, `present`.
    Puppet::Resource::Param(Enum['absent', 'present'], 'ensure'),

    # The default domain name to append to the device hostname (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'domain'),

    # The host name of the device (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'hostname'),

    # Array of DNS suffixes to search for FQDN entries (a Optional[Array[String]])
    Puppet::Resource::Param(Any, 'search'),

    # Array of DNS servers to use for name resolution (a Optional[Array[String]])
    Puppet::Resource::Param(Any, 'servers'),

    # Sets whether the Domain Name Server (DNS) lookup feature should be enabled (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'ip_domain_lookup')
  ],
  [
    # Name, generally "settings", not used to manage the resource (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'name', true)
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
