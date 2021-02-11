# This file was automatically generated on 2021-02-07 14:46:23 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Configure access lists. Deprecated, due to unreconcilable implementation issues. Use the ios_acl type instead.
Puppet::Resource::ResourceType3.new(
  'ios_access_list',
  [
    # Whether this access list should be present or absent on the target system. (a Enum[present, absent])
    # 
    # Valid values are `absent`, `present`.
    Puppet::Resource::Param(Enum['absent', 'present'], 'ensure'),

    # Type of access list - standard, extended, reflexive or no type (a Enum["Standard","Extended","Reflexive","none"])
    Puppet::Resource::Param(Any, 'access_list_type')
  ],
  [
    # Access list name or number. (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'name', true)
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
