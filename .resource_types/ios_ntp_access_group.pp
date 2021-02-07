# This file was automatically generated on 2021-02-07 14:46:28 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Specify NTP access group config
Puppet::Resource::ResourceType3.new(
  'ios_ntp_access_group',
  [
    # Whether this access group entry should be present or absent on the target system. (a Enum[present, absent])
    # 
    # Valid values are `absent`, `present`.
    Puppet::Resource::Param(Enum['absent', 'present'], 'ensure'),

    # Defines the access group type (a Enum["peer", "serve", "query-only", "serve-only"])
    Puppet::Resource::Param(Any, 'access_group_type'),

    # Whether this access group makes use of ipv6 (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'ipv6_access_group')
  ],
  [
    # Configuration name, ip access list name (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'name', true)
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
