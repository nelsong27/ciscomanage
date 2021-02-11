# This file was automatically generated on 2021-02-07 14:46:28 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Configure a RADIUS server group
Puppet::Resource::ResourceType3.new(
  'ios_radius_server_group',
  [
    # Whether radius_server_group should be present or absent on the target system. (a Enum[present, absent])
    # 
    # Valid values are `absent`, `present`.
    Puppet::Resource::Param(Enum['absent', 'present'], 'ensure'),

    # Array of DNS suffixes to search for FQDN entries (a Optional[Array[String]])
    Puppet::Resource::Param(Any, 'servers'),

    # Array of private DNS suffixes to search for FQDN entries (a Optional[Array[String]])
    Puppet::Resource::Param(Any, 'private_servers')
  ],
  [
    # The name of the RADIUS server group (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'name', true)
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
