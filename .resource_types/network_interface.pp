# This file was automatically generated on 2021-02-07 14:46:41 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Manage physical network interfaces, e.g. Ethernet1
Puppet::Resource::ResourceType3.new(
  'network_interface',
  [
    # Whether this network interface should be enabled on the target system. (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'enable'),

    # Interface physical port description (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'description'),

    # Interface Maximum Transmission Unit in bytes (a Optional[Integer])
    # 
    # Values can match `/^-?\d+$/`.
    Puppet::Resource::Param(Pattern[/^-?\d+$/], 'mtu'),

    # Link speed [auto|10m|100m|1g|10g|40g|56g|100g] (a Optional[Enum["auto","10m","100m","1g","10g","40g","56g","100g"]])
    Puppet::Resource::Param(Any, 'speed'),

    # Duplex mode [auto|full|half] (a Optional[Enum["auto","full","duplex"]])
    Puppet::Resource::Param(Any, 'duplex')
  ],
  [
    # Interface Name, e.g. Ethernet1 (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'name', true)
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
