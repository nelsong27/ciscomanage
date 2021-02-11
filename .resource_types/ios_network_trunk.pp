# This file was automatically generated on 2021-02-07 14:46:27 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Ethernet logical (switch-port) interface.  Configures VLAN trunking.
Puppet::Resource::ResourceType3.new(
  'ios_network_trunk',
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
    Puppet::Resource::Param(Any, 'pruned_vlans'),

    # The VLAN to set when the interface is in access mode. Setting it to false will revert it to the default value.
    # 
    # Examples:
    # 
    # ```Puppet
    # access_vlan => 405
    # ```
    # 
    # ```Puppet
    # access_vlan => false
    # ```
    #  (a Optional[Variant[Integer[0, 4095], Boolean[false]]])
    Puppet::Resource::Param(Any, 'access_vlan'),

    # Sets how voice traffic should be treated by the access port. Setting it to false will revert it to the default value.
    # 
    # Examples:
    # 
    # ```Puppet
    # access_vlan => 221
    # ```
    # 
    # ```Puppet
    # access_vlan => 'dot1p'
    # ```
    # 
    # ```Puppet
    # access_vlan => 'false'
    # ```
    #  (a Optional[Variant[Integer[0, 4095], Enum["dot1p", "none", "untagged"], Boolean[false]]])
    Puppet::Resource::Param(Any, 'voice_vlan'),

    # When set, prevents the port from sending DTP (Dynamic Trunk Port) messages. Set automatically to true while in 'access mode' and cannot be set in 'dynamic_*' mode.
    # 
    # Examples:
    # 
    # ```Puppet
    # access_vlan => true
    # ```
    # 
    # See `network_trunk` for other availible fields.
    #  (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'switchport_nonegotiate'),

    # Sets which VLANs the access port will use when trunking is enabled. Setting it to false will revert it to the default value.
    # 
    # Examples:
    # 
    # ```Puppet
    # access_vlan => '101-202'
    # ```
    # 
    # ```Puppet
    # access_vlan => 'none'
    # ```
    # 
    # ```Puppet
    # access_vlan => ['except', '204-301']
    # ```
    #  (a Optional[Variant[Enum["all", "none"], Tuple[Enum["add", "remove", "except"], String], String, Boolean[false]]])
    Puppet::Resource::Param(Any, 'allowed_vlans')
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
