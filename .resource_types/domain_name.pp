# This file was automatically generated on 2021-02-07 14:46:40 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Deprecated - use network_dns instead.  Default domain name to append to the device hostname.
Puppet::Resource::ResourceType3.new(
  'domain_name',
  [
    # Whether the name server should be present or absent on the target system. (a Enum[present, absent])
    # 
    # Valid values are `absent`, `present`.
    Puppet::Resource::Param(Enum['absent', 'present'], 'ensure')
  ],
  [
    # The domain name of the device (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'name', true)
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
