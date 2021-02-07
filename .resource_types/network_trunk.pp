# This file was automatically generated on 2021-02-07 14:46:41 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Ethernet logical (switch-port) interface.  Configures VLAN trunking.
Puppet::Resource::ResourceType3.new(
  'network_trunk',
  [
    # Whether the network_trunk should be present or absent on the target system. (a Enum[present, absent])
    # 
    # Valid values are `absent`, `present`.
    Puppet::Resource::Param(Enum['absent', 'present'], 'ensure'),

    # The vlan-tagging encapsulation protocol, usually dot1q (a Optional[Enum["dot1q","isl","negotiate","none"]])
    Puppet::Resource::Param(Any, 'encapsulation'),

    # The L2 interface mode, enables or disables trunking (a Optional[Enum["access","trunk","dynamic_auto","dynamic_desirable"]])
    Puppet::Resource::Param(Any, 'mode'),

    # VLAN used for untagged VLAN traffic. a.k.a Native VLAN (a Optional[Integer[0, 4095]])
    # 
    # Values can match `/^-?\d+$/`.
    Puppet::Resource::Param(Pattern[/^-?\d+$/], 'untagged_vlan'),

    # Array of VLAN names used for tagged packets (a Optional[Array[String]])
    Puppet::Resource::Param(Any, 'tagged_vlans'),

    # Array of VLAN ID numbers used for VLAN pruning (a Optional[Array[String]])
    Puppet::Resource::Param(Any, 'pruned_vlans')
  ],
  [
    # The switch interface name, e.g. "Ethernet1" (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'name', true)
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
