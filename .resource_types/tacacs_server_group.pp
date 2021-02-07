# This file was automatically generated on 2021-02-07 14:46:48 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Configure a TACACS server group
Puppet::Resource::ResourceType3.new(
  'tacacs_server_group',
  [
    # Whether this TACACS server group should be present or absent on the target system. (a Enum[present, absent])
    # 
    # Valid values are `absent`, `present`.
    Puppet::Resource::Param(Enum['absent', 'present'], 'ensure'),

    # String of servers associated with this group (a Optional[Array[String]])
    Puppet::Resource::Param(Any, 'servers'),

    # The source interface used for TACACS packets. (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'source_interface'),

    # The VRF associated with source_interface. (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'vrf')
  ],
  [
    # The name of the TACACS server group (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'name', true)
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
