# This file was automatically generated on 2021-02-07 14:46:44 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Deprecated - use network_dns instead.  DNS suffix to search for FQDN entries.
Puppet::Resource::ResourceType3.new(
  'search_domain',
  [
    # Whether the name server should be present or absent on the target system. (a Enum[present, absent])
    # 
    # Valid values are `absent`, `present`.
    Puppet::Resource::Param(Enum['absent', 'present'], 'ensure')
  ],
  [
    # The search domain to configure in the resolver (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'name', true)
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
