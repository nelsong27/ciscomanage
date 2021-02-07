# This file was automatically generated on 2021-02-07 14:46:42 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Manage VLAN's.  Layer-2 VLAN's are managed by this resource type.
Puppet::Resource::ResourceType3.new(
  'network_vlan',
  [
    # Whether this VLAN should be present or absent on the target system. (a Enum[present, absent])
    # 
    # Valid values are `absent`, `present`.
    Puppet::Resource::Param(Enum['absent', 'present'], 'ensure'),

    # The VLAN name (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'vlan_name'),

    # VLAN shutdown if true, not shutdown if false [true|false] (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'shutdown'),

    # The VLAN Description, e.g. 'Engineering' (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'description')
  ],
  [
    # The VLAN ID (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'id', true)
  ],
  {
    /(?m-ix:(.*))/ => ['id']
  },
  true,
  false)
