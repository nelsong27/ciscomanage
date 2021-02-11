# This file was automatically generated on 2021-02-07 14:46:45 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Manage the SNMP community
Puppet::Resource::ResourceType3.new(
  'snmp_community',
  [
    # Whether the SNMP Community should be present or absent on the target system. (a Enum[present, absent])
    # 
    # Valid values are `absent`, `present`.
    Puppet::Resource::Param(Enum['absent', 'present'], 'ensure'),

    # The SNMP group for this community (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'group'),

    # The ACL name to associate with this community string (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'acl')
  ],
  [
    # The name of the community, e.g. "public" or "private" (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'name', true)
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
