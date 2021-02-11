# This file was automatically generated on 2021-02-07 14:46:41 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Manage snmp location, contact and enable SNMP on the device
Puppet::Resource::ResourceType3.new(
  'network_snmp',
  [
    # Enable or disable SNMP functionality [true|false] (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'enable'),

    # The contact name for this device (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'contact'),

    # The location of this device (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'location')
  ],
  [
    # Name, generally "default", not used to manage the resource (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'name', true)
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
