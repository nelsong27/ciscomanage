# This file was automatically generated on 2021-02-07 14:46:33 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Manages a Cisco Network Interface.
# 
# Resource dependencies should process before the interface resource.
# 
# cisco_interface {'<interface>':
#   ..attributes..
# }
# 
# <interface> is the complete name of the interface.
# 
# Examples:
#   cisco_interface {'ethernet1/15':
#    shutdown                     => false,
#    description                  => 'switched port',
#    switchport_mode              => access,
#    access_vlan                  => 2,
#    switchport_autostate_exclude => true,
#    switchport_vtp               => true,
#   }
#   cisco_interface { 'ethernet1/16' :
#    shutdown                       => true,
#    description                    => 'routed port',
#    ipv4_address                   => '192.168.1.1',
#    ipv4_netmask_length            => 24,
#    ipv4_address_secondary         => '192.168.2.1',
#    ipv4_netmask_length_secondary  => 24,
#    ipv4_forwarding                => true,
#    ipv4_redirects                 => true,
#    ipv4_proxy_arp                 => true,
#    ipv4_pim_sparse_mode           => true,
#    negotiate_auto                 => true,
#    ipv4_dhcp_relay_addr           => ['1.1.1.1', '2.2.2.2'],
#    ipv4_dhcp_relay_info_trust     => true,
#    ipv4_dhcp_relay_src_addr_hsrp  => true,
#    ipv4_dhcp_relay_src_intf       => 'port-channel 100',
#    ipv4_dhcp_relay_subnet_broadcast => true,
#    ipv4_dhcp_smart_relay          => true,
#    ipv6_dhcp_relay_addr           => ['2000::11', '2001::22'],
#    ipv6_dhcp_relay_src_intf       => 'ethernet 2/2',
#    ipv6_redirects                 => true,
#    pim_bfd                        => true,
#   }
#   cisco_interface { 'ethernet1/17' :
#    stp_bpdufilter               => 'enable',
#    stp_bpduguard                => 'enable',
#    stp_cost                     => 2000,
#    stp_guard                    => 'loop',
#    stp_link_type                => 'shared',
#    stp_port_priority            => 32,
#    stp_port_type                => 'network',
#    stp_mst_cost                 => [[0,2-4,6,8-12, 1000], [1000, 2568]],
#    stp_mst_port_priority        => [[0,2-11,20-33, 64], [1111, 160],
#    stp_vlan_cost                => [[1-4,6,8-12, 1000], [1000, 2568]],
#    stp_vlan_port_priority       => [[1-11,20-33, 64], [1111, 160],
#   }
#   cisco_interface { 'ethernet1/18' :
#    hsrp_bfd                     => true,
#    hsrp_delay_minimum           => 222,
#    hsrp_delay_reload            => 10,
#    hsrp_mac_refresh             => 555,
#    hsrp_use_bia                 => 'use_bia',
#    hsrp_version                 => 2,
#   }
#   cisco_interface { 'ethernet9/1' :
#    switchport_mode              => 'trunk',
#    storm_control_broadcast      => '77.77',
#    storm_control_multicast      => '22.22',
#    storm_control_unicast        => '33.33',
#    vlan_mapping_enable          => 'false',
#    vlan_mapping                 => [[20, 21], [30, 31]],
#   }
#   cisco_interface { 'loopback42' :
#    description                  => 'logical interface',
#    shutdown                     => true,
#   }
#   cisco_interface { 'loopback43' :
#    ensure                       => absent,
#    # ensure will create or destroy a logical interface. If not specified
#    # then the default behavior is to attempt to create the interface.
#   }
#   cisco_interface {'Vlan98':
#    shutdown                     => true,
#    description                  => 'svi interface',
#    ipv4_arp_timeout             => 300,
#    svi_autostate                => true,
#    svi_management               => true,
#    load_interval_counter_1_delay => 150,
#    load_interval_counter_2_delay => 250,
#    load_interval_counter_3_delay => 90,
#   }
#   cisco_interface { 'ethernet8/1' :
#    description                        => 'Private-vlan host',
#    switchport_pvlan_host              => 'host',
#    switchport_pvlan_host_association  => ['10', '11'],
#   }
#   cisco_interface { 'ethernet8/1' :
#    description                         => 'Private-vlan trunk',
#    switchport_pvlan_trunk_promiscuous  => true,
#    switchport_pvlan_trunk_association  => [['14', '114'], ['15', '115']],
#    switchport_pvlan_trunk_allowed_vlan => '88-91,94',
#    switchport_pvlan_trunk_native_vlan  => 12,
#   }
#   cisco_interface {'Vlan98':
#    pvlan_mapping => '10-11,13',
#   }
Puppet::Resource::ResourceType3.new(
  'cisco_interface',
  [
    # The basic property that the resource should be in.
    # 
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure'),

    # Enables bfd echo function for all address families.
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'bfd_echo'),

    # Description of the interface. Valid values are string, keyword
    # 'default'.
    Puppet::Resource::Param(Any, 'description'),

    # Enable IEEE 802.1Q encapsulation of traffic on a specified
    # subinterface.  Valid values are integer, keyword 'default'.
    Puppet::Resource::Param(Any, 'encapsulation_dot1q'),

    # Maximum Trasnmission Unit size for frames received and sent on the
    # specified interface. Valid values are integer, keyword 'default'.
    Puppet::Resource::Param(Any, 'mtu'),

    # Configure the speed between interfaces. Default value is 'auto'.
    # 
    # Valid values are `auto`, `10`, `100`, `1000`, `10000`, `100000`, `40000`, `default`.
    Puppet::Resource::Param(Enum['auto', '10', '100', '1000', '10000', '100000', '40000', 'default'], 'speed'),

    # Configure duplex between interfaces. Default value is 'auto'.
    # 
    # Valid values are `auto`, `full`, `default`.
    Puppet::Resource::Param(Enum['auto', 'full', 'default'], 'duplex'),

    # Shutdown state of the interface.
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'shutdown'),

    # Switchport mode of the interface. To make an interface L3, set
    # switchport_mode to 'disabled'.
    # 
    # Valid values are `disabled`, `access`, `tunnel`, `fex_fabric`, `trunk`, `fabricpath`, `default`.
    Puppet::Resource::Param(Enum['disabled', 'access', 'tunnel', 'fex_fabric', 'trunk', 'fabricpath', 'default'], 'switchport_mode'),

    # The VLAN ID assigned to the interface. Valid values are
    # integer, keyword 'default'.
    Puppet::Resource::Param(Any, 'access_vlan'),

    # Exclude this port for the SVI link calculation.
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'switchport_autostate_exclude'),

    # The allowed VLANs for the specified Ethernet interface. Valid values
    # are string, keyword 'default'.
    Puppet::Resource::Param(Any, 'switchport_trunk_allowed_vlan'),

    # The Native VLAN assigned to the switch port. Valid values are
    # integer, keyword 'default'.
    Puppet::Resource::Param(Any, 'switchport_trunk_native_vlan'),

    # Enable or disable VTP on the interface.
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'switchport_vtp'),

    # Enable/Disable negotiate auto on the interface.
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'negotiate_auto'),

    # Configure vPC id on this interface to make it a vPC link to a
    # downstream device. The vPC Peer switch must have an indentical
    # configuration to the same downstream device. Valid values are in
    # the range 1..4096
    Puppet::Resource::Param(Any, 'vpc_id'),

    # Enable/Disable this interface as a VPC Peer-link. This is valid
    # only for port-channel interfaces. Valid values true or false
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'vpc_peer_link'),

    # Enables pim BFD on this interface.
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'pim_bfd'),

    # <L3 attribute> Enables or disables ipv4 pim sparse mode on the interface.
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'ipv4_pim_sparse_mode'),

    # <L3 attribute> Enables or disables proxy arp on the
    # interface.
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'ipv4_proxy_arp'),

    # <L3 attribute> Enables or disables sending of IP redirect
    # messages.
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'ipv4_redirects'),

    # <L3 attribute> IP address of the interface. Valid values are
    # string, keyword 'default'.
    Puppet::Resource::Param(Any, 'ipv4_address'),

    # <L3 attribute> Secondary IP address of the interface. Valid values are
    # string, keyword 'default'.
    Puppet::Resource::Param(Any, 'ipv4_address_secondary'),

    # <L3 attribute> Network mask length of the IP address on the
    # interface. Valid values are integer, keyword 'default'.
    Puppet::Resource::Param(Any, 'ipv4_netmask_length'),

    # <L3 attribute> Network mask length of the secondary IP address on the
    # interface. Valid values are integer, keyword 'default'.
    Puppet::Resource::Param(Any, 'ipv4_netmask_length_secondary'),

    # Configure Address Resolution Protocol (ARP) timeout. Valid values
    # are integer, keyword 'default'.
    Puppet::Resource::Param(Any, 'ipv4_arp_timeout'),

    # <L3 attribute> VRF member of the interface. Valid values
    # are string, keyword 'default'.
    Puppet::Resource::Param(Any, 'vrf'),

    # <L3 attribute> ipv4 ingress access list on the interface. Valid values
    # are string, keyword 'default'.
    Puppet::Resource::Param(Any, 'ipv4_acl_in'),

    # <L3 attribute> ipv4 egress access list on the interface. Valid values
    # are string, keyword 'default'.
    Puppet::Resource::Param(Any, 'ipv4_acl_out'),

    # <L3 attribute> Enables or disables IP forwarding on the interface. Valid values are true, false, keyword 'default'
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'ipv4_forwarding'),

    # <L3 attribute> ipv6 ingress access list on the interface. Valid values
    # are string, keyword 'default'.
    Puppet::Resource::Param(Any, 'ipv6_acl_in'),

    # <L3 attribute> ipv6 egress access list on the interface. Valid values
    # are string, keyword 'default'.
    Puppet::Resource::Param(Any, 'ipv6_acl_out'),

    # <L3 attribute> Enables or disables sending of IPv6 redirect
    # messages.
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'ipv6_redirects'),

    # Associate SVI with anycast gateway under VLAN configuration mode. Valid values are 'true','false' and 'default'.
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'fabric_forwarding_anycast_gateway'),

    # Enable/Disable autostate on the SVI interface.
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'svi_autostate'),

    # Enable/Disable management on the SVI interface.
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'svi_management'),

    # An array of [original_vlan, translated_vlan] pairs. Valid values match format [[original_vlan, translated_vlan], [orig2, tran2]].
    Puppet::Resource::Param(Any, 'vlan_mapping'),

    # Enable/Disable vlan mapping on the interface. Valid values are 'true', 'false', and 'default'.
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'vlan_mapping_enable'),

    # Enable/Disable BPDU filtering for this interface.
    # 
    # Valid values are `enable`, `disable`, `default`.
    Puppet::Resource::Param(Enum['enable', 'disable', 'default'], 'stp_bpdufilter'),

    # Enable/Disable BPDU guard for this interface.
    # 
    # Valid values are `enable`, `disable`, `default`.
    Puppet::Resource::Param(Enum['enable', 'disable', 'default'], 'stp_bpduguard'),

    # Spanning tree port path cost for this interface. Valid values are
    # integer, keyword 'auto' or 'default'.
    Puppet::Resource::Param(Any, 'stp_cost'),

    # Spanning-tree guard mode for this interface.
    # 
    # Valid values are `loop`, `none`, `root`, `default`.
    Puppet::Resource::Param(Enum['loop', 'none', 'root', 'default'], 'stp_guard'),

    # Link type for spanning tree tree protocol use.
    # 
    # Valid values are `auto`, `shared`, `point-to-point`, `default`.
    Puppet::Resource::Param(Enum['auto', 'shared', 'point-to-point', 'default'], 'stp_link_type'),

    # An array of [mst_instance_list, cost] pairs. Valid values match format [[mst_inst_list, cost], [mil, cost]].
    Puppet::Resource::Param(Any, 'stp_mst_cost'),

    # An array of [mst_inst_list, port_priority] pairs. Valid values match format [[mst_inst_list, port_priority], [vr, port_priority]].
    Puppet::Resource::Param(Any, 'stp_mst_port_priority'),

    # Spanning tree port priority for this interface. Valid values are
    # integer, keyword 'default'.
    Puppet::Resource::Param(Any, 'stp_port_priority'),

    # Spanning tree port type for this interface.
    # 
    # Valid values are `edge`, `network`, `normal`, `edge trunk`, `default`.
    Puppet::Resource::Param(Enum['edge', 'network', 'normal', 'edge trunk', 'default'], 'stp_port_type'),

    # An array of [vlan_range, cost] pairs. Valid values match format [[vlan_range, cost], [vr, cost]].
    Puppet::Resource::Param(Any, 'stp_vlan_cost'),

    # An array of [vlan_range, port_priority] pairs. Valid values match format [[vlan_range, port_priority], [vr, pp]].
    Puppet::Resource::Param(Any, 'stp_vlan_port_priority'),

    # Maps secondary VLANs to the VLAN interface of a primary VLAN. Valid inputs are a String containing a range of secondary vlans, example: '3-4,6'; or keyword 'default'
    Puppet::Resource::Param(Any, 'pvlan_mapping'),

    # Configures a Layer 2 interface as a private VLAN host port. Valid values are 'true', 'false', and 'default'.
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'switchport_pvlan_host'),

    # Associates the Layer 2 host port with the primary and secondary VLANs of a private VLAN. Valid inputs are: An array containing the primary and secondary vlans: e.g.: ['44', '144']; or keyword 'default'
    Puppet::Resource::Param(Any, 'switchport_pvlan_host_association'),

    # Associates the specified port with a primary VLAN and a selected list of secondary VLANs. Valid inputs are an array containing both the primary vlan and a range of secondary vlans, example: ['44', '3-4,6'] or keyword 'default'
    Puppet::Resource::Param(Any, 'switchport_pvlan_mapping'),

    # Maps the promiscuous trunk port with the primary VLAN and a selectedlist of associated secondary VLANs.
    # Valid inputs are: An array containing both the primary vlan and a range
    # of secondary vlans: ['44', '3-4,6']; a nested array if there are multiple
    # mappings: [['44', '3-4,6'], ['99', '199']]; or the keyword 'default'
    Puppet::Resource::Param(Any, 'switchport_pvlan_mapping_trunk'),

    # Sets the allowed VLANs for the private VLAN isolated trunk interface. Valid values are a String range of vlans: e.g. '3-4,6'; or keyword 'default'.
    Puppet::Resource::Param(Any, 'switchport_pvlan_trunk_allowed_vlan'),

    # Associates the Layer 2 isolated trunk port with the primary and secondary VLANs of private VLANs.
    # Valid inputs are: An array containing an association of primary and
    # secondary vlans: e.g. ['44', '244']; a nested array if there are multiple
    # associations: [['44', '244'], ['45', '245']]; or the keyword 'default'
    Puppet::Resource::Param(Any, 'switchport_pvlan_trunk_association'),

    # Sets the native VLAN for the 802.1Q trunk. Valid values are Integer, String, or keyword 'default'.
    Puppet::Resource::Param(Any, 'switchport_pvlan_trunk_native_vlan'),

    # Configures a Layer 2 interface as a private VLAN promiscuous port. Valid values are 'true', 'false', and 'default'.
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'switchport_pvlan_promiscuous'),

    # Configures a Layer 2 interface as a private VLAN promiscuous trunk port. Valid values are 'true', 'false', and 'default'.
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'switchport_pvlan_trunk_promiscuous'),

    # Configures a Layer 2 interface as a private VLAN isolated trunk port. Valid values are 'true', 'false', and 'default'.
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'switchport_pvlan_trunk_secondary'),

    # An array of ipv4 addressesValid values match format [addr1, addr2].
    Puppet::Resource::Param(Any, 'ipv4_dhcp_relay_addr'),

    # Enables relay trust on this interface.
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'ipv4_dhcp_relay_info_trust'),

    # Enables Virtual IP instead of SVI address
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'ipv4_dhcp_relay_src_addr_hsrp'),

    # Source interface for the DHCPV4 relay. Valid values
    # are string, keyword 'default'.
    Puppet::Resource::Param(Any, 'ipv4_dhcp_relay_src_intf'),

    # Enables DHCP relay subnet-broadcast on this interface.
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'ipv4_dhcp_relay_subnet_broadcast'),

    # Enables DHCP smart relay on this interface.
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'ipv4_dhcp_smart_relay'),

    # An array of ipv6 addressesValid values match format [addr1, addr2].
    Puppet::Resource::Param(Any, 'ipv6_dhcp_relay_addr'),

    # Source interface for the DHCPV6 relay. Valid values
    # are string, keyword 'default'.
    Puppet::Resource::Param(Any, 'ipv6_dhcp_relay_src_intf'),

    # Allowed broadcast traffic level. Valid values
    # are string, keyword 'default'.
    Puppet::Resource::Param(Any, 'storm_control_broadcast'),

    # Allowed multicast traffic level. Valid values
    # are string, keyword 'default'.
    Puppet::Resource::Param(Any, 'storm_control_multicast'),

    # Allowed unicast traffic level. Valid values
    # are string, keyword 'default'.
    Puppet::Resource::Param(Any, 'storm_control_unicast'),

    # Enable HSRP BFD on this interface.
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'hsrp_bfd'),

    # Hsrp intialization minimim delay in sec. Valid values are
    # integer, keyword 'default'.
    Puppet::Resource::Param(Any, 'hsrp_delay_minimum'),

    # Hsrp intialization delay after reload in sec. Valid values are
    # integer, keyword 'default'.
    Puppet::Resource::Param(Any, 'hsrp_delay_reload'),

    # Hsrp mac refresh time in sec. Valid values are
    # integer, keyword 'default'.
    Puppet::Resource::Param(Any, 'hsrp_mac_refresh'),

    # Hsrp uses interface burned in address
    # 
    # Valid values are `use_bia`, `use_bia_intf`, `default`.
    Puppet::Resource::Param(Enum['use_bia', 'use_bia_intf', 'default'], 'hsrp_use_bia'),

    # Hsrp version. Valid values are integer, keyword 'default'.
    Puppet::Resource::Param(Any, 'hsrp_version'),

    # Load interval delay for counter 1 in seconds. Valid values
    # are integer, keyword 'default'.
    Puppet::Resource::Param(Any, 'load_interval_counter_1_delay'),

    # Load interval delay for counter 2 in seconds. Valid values
    # are integer, keyword 'default'.
    Puppet::Resource::Param(Any, 'load_interval_counter_2_delay'),

    # Load interval delay for counter 3 in seconds. Valid values
    # are integer, keyword 'default'.
    Puppet::Resource::Param(Any, 'load_interval_counter_3_delay')
  ],
  [
    # Name of the interface on the network element. Valid values are string.
    Puppet::Resource::Param(Any, 'interface', true),

    # The specific backend to use for this `cisco_interface`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # cisco
    # : The provider for cisco_interface.
    # 
    #   * Default for `operatingsystem` == `ios_xr, nexus`.
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['interface']
  },
  true,
  false)
