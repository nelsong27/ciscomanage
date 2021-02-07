# This file was automatically generated on 2021-02-07 14:46:31 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Manages the Cisco Dhcp Relay Global configuration resource.
# cisco_dhcp_relay_global {'default':
#   ..attributes..
# }
# 'default' is only acceptable name for this global config object.
# 
# Example:
# cisco_dhcp_relay_global { 'default':
#   ipv4_information_option           => true,
#   ipv4_information_option_trust     => true,
#   ipv4_information_option_vpn       => true,
#   ipv4_information_trust_all        => true,
#   ipv4_relay                        => true,
#   ipv4_smart_relay                  => true,
#   ipv4_src_addr_hsrp                => true,
#   ipv4_src_intf                     => 'port-channel200',
#   ipv4_sub_option_circuit_id_custom => true,
#   ipv4_sub_option_circuit_id_string => '%p%p',
#   ipv4_sub_option_cisco             => true,
#   ipv6_option_cisco                 => true,
#   ipv6_option_vpn                   => true,
#   ipv6_relay                        => true,
#   ipv6_src_intf                     => 'vlan2',
# }
Puppet::Resource::ResourceType3.new(
  'cisco_dhcp_relay_global',
  [
    # Enables inserting relay information in BOOTREQUEST
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'ipv4_information_option'),

    # Enables relay trust functionality on the system
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'ipv4_information_option_trust'),

    # Enables relay support across VRFs
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'ipv4_information_option_vpn'),

    # Enables relay trust on all the interfaces
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'ipv4_information_trust_all'),

    # Enables DHCP relay agent
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'ipv4_relay'),

    # Enables DHCP smart relay
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'ipv4_smart_relay'),

    # Enables Virtual IP instead of SVI address
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'ipv4_src_addr_hsrp'),

    # Source interface for the DHCPV4 relay. Valid values
    # are string, keyword 'default'.
    Puppet::Resource::Param(Any, 'ipv4_src_intf'),

    # Enables circuit id customized to include vlan id, slot and port info
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'ipv4_sub_option_circuit_id_custom'),

    # Specifies suboption format type string. Valid values
    # are string, keyword 'default'.
    Puppet::Resource::Param(Any, 'ipv4_sub_option_circuit_id_string'),

    # Enables cisco propritery suboptions
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'ipv4_sub_option_cisco'),

    # Enables cisco propritery suboptions for DHCPV6
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'ipv6_option_cisco'),

    # Enables DHCPv6 relay support across VRFs
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'ipv6_option_vpn'),

    # Enables DHCPv6 relay agent
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'ipv6_relay'),

    # Source interface for the DHCPV6 relay. Valid values
    # are string, keyword 'default'.
    Puppet::Resource::Param(Any, 'ipv6_src_intf')
  ],
  [
    # ID of the dhcp_relay global config. Valid values are default.
    Puppet::Resource::Param(Any, 'name', true),

    # The specific backend to use for this `cisco_dhcp_relay_global`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # cisco
    # : New Cisco provider for Dhcp Relay Global
    # 
    #   * Default for `operatingsystem` == `nexus`.
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
