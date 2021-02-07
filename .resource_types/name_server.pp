# This file was automatically generated on 2021-02-07 14:46:40 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Deprecated - use network_dns instead.  Configure the resolver to use the specified DNS server
Puppet::Resource::ResourceType3.new(
  'name_server',
  [
    # Whether the name server should be present or absent on the target system. (a Enum[present, absent])
    # 
    # Valid values are `absent`, `present`.
    Puppet::Resource::Param(Enum['absent', 'present'], 'ensure')
  ],
  [
    # The hostname or address of the DNS server (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'name', true)
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
