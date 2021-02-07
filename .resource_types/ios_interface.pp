# This file was automatically generated on 2021-02-07 14:46:27 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Manage layer 3 configuration on a per Instance basis.
Puppet::Resource::ResourceType3.new(
  'ios_interface',
  [
    # Whether to enable Mac Address added notification for this port. (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'mac_notification_added'),

    # Whether to enable Mac Address removed notification for this port. (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'mac_notification_removed'),

    # Whether to permit duplicate SNMP LINKUP and LINKDOWN traps. (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'link_status_duplicates'),

    # Whether or not to log certain event messages. Any event log not specifically indicated will be disabled.
    # 
    # Example:
    # ```puppet
    #   logging_event => ['spanning-tree','subif-link-status'],
    # ```
    # ```puppet
    #   logging_event => 'unset',
    # ```
    #  (a Optional[Variant[Enum["unset"], Array[Enum["bundle-status","nfas-status","spanning-tree","status","subif-link-status","trunk-status","power-inline-status"]]]])
    Puppet::Resource::Param(Any, 'logging_event'),

    # Whether to log UPDOWN and CHANGE event messages. (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'logging_event_link_status'),

    # DHCP Snooping trust config. (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'ip_dhcp_snooping_trust'),

    # DHCP snooping rate limit.
    # 
    # Example:
    # ```puppet
    #   ip_dhcp_snooping_limit => 1500,
    # ```
    # ```puppet
    #   ip_dhcp_snooping_limit => false,
    # ```
    #  (a Optional[Variant[Boolean[false], Integer[1, 2048]]])
    Puppet::Resource::Param(Any, 'ip_dhcp_snooping_limit'),

    # Flow control (receive) [desired|on|off]
    # 
    # Example:
    # ```puppet
    #   flowcontrol_receive => 'desired',
    # ```
    #  (a Optional[Enum["desired","on","off"]])
    Puppet::Resource::Param(Any, 'flowcontrol_receive'),

    # VRF config (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'vrf'),

    # Enable/Disable Cisco Express Forwarding (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'route_cache_cef')
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
