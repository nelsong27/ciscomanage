# This file was automatically generated on 2021-02-07 14:46:28 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Manages the Cisco Spanning-tree Global configuration resource.
Puppet::Resource::ResourceType3.new(
  'ios_stp_global',
  [
    # Disable STP functionality by specifying false. (a Optional[Boolean[false]])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'enable'),

    # Bridge Assurance on all network ports (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'bridge_assurance'),

    # Extend system-id into priority portion of the bridge id (PVST & Rapid PVST only) (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'extend_system_id'),

    # Bridge Assurance on all network ports (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'loopguard'),

    # Operating Mode (a Optional[Enum["mst","pvst","rapid-pvst"]])
    Puppet::Resource::Param(Any, 'mode'),

    # Forward delay for the spanning tree (a Optional[Integer])
    # 
    # Values can match `/^-?\d+$/`.
    Puppet::Resource::Param(Pattern[/^-?\d+$/], 'mst_forward_time'),

    # Hello interval for the spanning tree (a Optional[Integer])
    # 
    # Values can match `/^-?\d+$/`.
    Puppet::Resource::Param(Pattern[/^-?\d+$/], 'mst_hello_time'),

    # An array of [mst_inst, vlan_range] pairs. (a Optional[Array[Tuple[Integer,String]]])
    Puppet::Resource::Param(Any, 'mst_inst_vlan_map'),

    # Max age interval for the spanning tree (a Optional[Integer[6,40]])
    # 
    # Values can match `/^-?\d+$/`.
    Puppet::Resource::Param(Pattern[/^-?\d+$/], 'mst_max_age'),

    # Max hops value for the spanning tree (a Optional[Integer[1,255]])
    # 
    # Values can match `/^-?\d+$/`.
    Puppet::Resource::Param(Pattern[/^-?\d+$/], 'mst_max_hops'),

    # Configuration name. (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'mst_name'),

    # An array of [mst_inst_list, priority] pairs. (a Optional[Array[Tuple[String,Integer]]])
    Puppet::Resource::Param(Any, 'mst_priority'),

    # Configuration revision number. (a Optional[Integer])
    # 
    # Values can match `/^-?\d+$/`.
    Puppet::Resource::Param(Pattern[/^-?\d+$/], 'mst_revision'),

    # Method to calculate default port path cost (a Optional[Enum["long","short"]])
    Puppet::Resource::Param(Any, 'pathcost'),

    # Spanning tree portfast options (a Optional[Array[Enum["default","bpduguard_default","bpdufilter_default"]]])
    Puppet::Resource::Param(Any, 'portfast'),

    # Enable UplinkFast Feature (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'uplinkfast'),

    # Maximum number of update packets per second (a Optional[Integer])
    # 
    # Values can match `/^-?\d+$/`.
    Puppet::Resource::Param(Pattern[/^-?\d+$/], 'uplinkfast_max_update_rate'),

    # An array of [vlan_inst_list, forward_time] pairs. (a Optional[Array[Tuple[String,Integer]]])
    Puppet::Resource::Param(Any, 'vlan_forward_time'),

    # An array of [vlan_inst_list, hello_time] pairs. (a Optional[Array[Tuple[String,Integer]]])
    Puppet::Resource::Param(Any, 'vlan_hello_time'),

    # An array of [vlan_inst_list, max_age] pairs. (a Optional[Array[Tuple[String,Integer]]])
    Puppet::Resource::Param(Any, 'vlan_max_age'),

    # An array of [vlan_inst_list, priority] pairs. (a Optional[Array[Tuple[String,Integer]]])
    Puppet::Resource::Param(Any, 'vlan_priority')
  ],
  [
    # ID of the stp global config. Valid values are default. (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'name', true)
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
