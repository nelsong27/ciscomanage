# This file was automatically generated on 2021-02-07 14:46:38 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Manages the Cisco Spanning-tree Global configuration resource.
# cisco_stp_global {'default':
#   ..attributes..
# }
# 'default' is only acceptable name for this global config object.
# 
# Range based parameters (for ex. see bd_designated_priority below)
# are nested array of arrays. These are basically range to value pairs.
# So for bd_designated_priority, the bridge domain range 2 to 42 will be set
# to 40960 and 83to 92 and 1000 to 2300 will be set to 53248
# 
# Example:
# cisco_stp_global { 'default':
#   bd_designated_priority       => [['2-42', '40960'], ['83-92,1000-2300', '53248']],
#   bd_forward_time              => [['2-42', '26'], ['83-92,1000-2300', '20']],
#   bd_hello_time                => [['2-42', '6'], ['83-92,1000-2300', '9']],
#   bd_max_age                   => [['2-42', '26'], ['83-92,1000-2300', '20']],
#   bd_priority                  => [['2-42', '40960'], ['83-92,1000-2300', '53248']],
#   bd_root_priority             => [['2-42', '40960'], ['83-92,1000-2300', '53248']],
#   bpdufilter                   => true,
#   bpduguard                    => true,
#   bridge_assurance             => false,
#   domain                       => 100,
#   fcoe                         => false,
#   loopguard                    => true,
#   mode                         => 'mst',
#   mst_designated_priority      => [['2-42', '40960'], ['83-92,1000-2300', '53248']],
#   mst_forward_time             => 25,
#   mst_hello_time               => 5,
#   mst_inst_vlan_map            => [['2', '6-47'], ['92', '120-400']],
#   mst_max_age                  => 35,
#   mst_max_hops                 => 200,
#   mst_name                     => 'nexus',
#   mst_priority                 => [['2-42', '40960'], ['83-92,1000-2300', '53248']],
#   mst_revision                 => 34,
#   mst_root_priority            => [['2-42', '40960'], ['83-92,1000-2300', '53248']],
#   pathcost                     => 'long',
#   vlan_designated_priority     => [['1-42', '40960'], ['83-92,1000-2300', '53248']],
#   vlan_forward_time            => [['1-42', '19'], ['83-92,1000-2300', '13']],
#   vlan_hello_time              => [['1-42', '10'], ['83-92,1000-2300', '6']],
#   vlan_max_age                 => [['1-42', '21'], ['83-92,1000-2300', '13']],
#   vlan_priority                => [['1-42', '40960'], ['83-92,1000-2300', '53248']],
#   vlan_root_priority           => [['1-42', '40960'], ['83-92,1000-2300', '53248']],
# }
Puppet::Resource::ResourceType3.new(
  'cisco_stp_global',
  [
    # An array of [bd_inst_list, designated_priority] pairs. Valid values match format [[bd_inst_list, designated_priority], [bdil, dp]].
    Puppet::Resource::Param(Any, 'bd_designated_priority'),

    # An array of [bd_inst_list, forward_time] pairs. Valid values match format [[bd_inst_list, forward_time], [bdil, ft]].
    Puppet::Resource::Param(Any, 'bd_forward_time'),

    # An array of [bd_inst_list, hello_time] pairs. Valid values match format [[bd_inst_list, hello_time], [bdil, ht]].
    Puppet::Resource::Param(Any, 'bd_hello_time'),

    # An array of [bd_inst_list, max_age] pairs. Valid values match format [[bd_inst_list, max_age], [bdil, ma]].
    Puppet::Resource::Param(Any, 'bd_max_age'),

    # An array of [bd_inst_list, priority] pairs. Valid values match format [[bd_inst_list, priority], [bdil, pri]].
    Puppet::Resource::Param(Any, 'bd_priority'),

    # An array of [bd_inst_list, root_priority] pairs. Valid values match format [[bd_inst_list, root_priority], [bdil, pri]].
    Puppet::Resource::Param(Any, 'bd_root_priority'),

    # Edge port (portfast) bpdu filter
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'bpdufilter'),

    # Edge port (portfast) bpdu guard
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'bpduguard'),

    # Bridge Assurance on all network ports
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'bridge_assurance'),

    # Spanning Tree domain
    Puppet::Resource::Param(Any, 'domain'),

    # STP for FCoE VLAN
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'fcoe'),

    # Enable loopguard by default on all ports
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'loopguard'),

    # Operating mode
    # 
    # Valid values are `mst`, `rapid-pvst`, `default`.
    Puppet::Resource::Param(Enum['mst', 'rapid-pvst', 'default'], 'mode'),

    # An array of [mst_inst_list, designated_priority] pairs. Valid values match format [[mst_inst_list, designated_priority], [mil, pri]].
    Puppet::Resource::Param(Any, 'mst_designated_priority'),

    # Forward delay for the spanning tree
    Puppet::Resource::Param(Any, 'mst_forward_time'),

    # Hello interval for the spanning tree
    Puppet::Resource::Param(Any, 'mst_hello_time'),

    # An array of [mst_inst, vlan_range] pairs. Valid values match format [[mst_inst, vlan_range], [mi, vr]].
    Puppet::Resource::Param(Any, 'mst_inst_vlan_map'),

    # Max age interval for the spanning tree
    Puppet::Resource::Param(Any, 'mst_max_age'),

    # Max hops value for the spanning tree
    Puppet::Resource::Param(Any, 'mst_max_hops'),

    # Configuration name. Valid values are string, keyword
    # 'default'.
    Puppet::Resource::Param(Any, 'mst_name'),

    # An array of [mst_inst_list, priority] pairs. Valid values match format [[mst_inst_list, priority], [mil, pri]].
    Puppet::Resource::Param(Any, 'mst_priority'),

    # Configuration revision number
    Puppet::Resource::Param(Any, 'mst_revision'),

    # An array of [mst_inst_list, root_priority] pairs. Valid values match format [[mst_inst_list, root_priority], [mil, pri]].
    Puppet::Resource::Param(Any, 'mst_root_priority'),

    # Method to calculate default port path cost
    # 
    # Valid values are `long`, `short`, `default`.
    Puppet::Resource::Param(Enum['long', 'short', 'default'], 'pathcost'),

    # An array of [vlan_inst_list, designated_priority] pairs. Valid values match format [[vlan_inst_list, designated_priority], [vil, pri]].
    Puppet::Resource::Param(Any, 'vlan_designated_priority'),

    # An array of [vlan_inst_list, forward_time] pairs. Valid values match format [[vlan_inst_list, forward_time], [vil, ft]].
    Puppet::Resource::Param(Any, 'vlan_forward_time'),

    # An array of [vlan_inst_list, hello_time] pairs. Valid values match format [[vlan_inst_list, hello_time], [vil, ht]].
    Puppet::Resource::Param(Any, 'vlan_hello_time'),

    # An array of [vlan_inst_list, max_age] pairs. Valid values match format [[vlan_inst_list, max_age], [vil, ma]].
    Puppet::Resource::Param(Any, 'vlan_max_age'),

    # An array of [vlan_inst_list, priority] pairs. Valid values match format [[vlan_inst_list, priority], [vil, pri]].
    Puppet::Resource::Param(Any, 'vlan_priority'),

    # An array of [vlan_inst_list, root_priority] pairs. Valid values match format [[vlan_inst_list, root_priority], [vil, pri]].
    Puppet::Resource::Param(Any, 'vlan_root_priority')
  ],
  [
    # ID of the stp global config. Valid values are default.
    Puppet::Resource::Param(Any, 'name', true),

    # The specific backend to use for this `cisco_stp_global`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # cisco
    # : The new Cisco provider.
    # 
    #   * Default for `operatingsystem` == `nexus`.
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
