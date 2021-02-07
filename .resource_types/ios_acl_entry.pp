# This file was automatically generated on 2021-02-07 14:46:23 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Configure access lists entries. Deprecated, due to unreconcilable implementation issues. Use the ios_acl type instead.
Puppet::Resource::ResourceType3.new(
  'ios_acl_entry',
  [
    # Whether this access list entry should be present or absent on the target system. (a Enum[present, absent])
    # 
    # Valid values are `absent`, `present`.
    Puppet::Resource::Param(Enum['absent', 'present'], 'ensure'),

    # Name of parent access list (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'access_list'),

    # Name. Used as sequence number <1-2147483647> (a Integer)
    # 
    # Values can match `/^-?\d+$/`.
    Puppet::Resource::Param(Pattern[/^-?\d+$/], 'entry'),

    # Name of a Dynamic list (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'dynamic'),

    # Specify packets to forward/reject, or evaluate an access list (a Enum["permit", "deny", "evaluate"])
    Puppet::Resource::Param(Any, 'permission'),

    # Evaluate an access list (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'evaluation_name'),

    # The ACL Entry Protocol
    # 
    # Example:
    # ```puppet
    # protocol => 'tcp'
    # ```
    # ```puppet
    # protocol => '8'
    # ```
    #  (a Optional[Variant[Enum["ahp","eigrp","esp","gre","icmp","igmp","ip","ipinip","nos","ospf","pcp","pim","tcp","udp"],Pattern[/\d+/]]])
    Puppet::Resource::Param(Any, 'protocol'),

    # Source Address. Either Source Address, address object-group, any or source host are required. (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'source_address'),

    # Source Address object-group. Either Source Address, address object-group, any or source host are required. (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'source_address_group'),

    # Source Address. Either Source Address, address object-group, any or source host are required. (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'source_address_any'),

    # Source Address. Either Source Address, address object-group, any or source host are required. (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'source_address_host'),

    # Source Address wildcard mask. Must be used with, and only used with, Source Address. (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'source_address_wildcard_mask'),

    # Match only packets on a given port number. (a Optional[Array[String]])
    Puppet::Resource::Param(Any, 'source_eq'),

    # Match only packets with a greater port number. (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'source_gt'),

    # Match only packets with a lower port number. (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'source_lt'),

    # Match only packets not on a given port number. (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'source_neq'),

    # Destination port object-group. (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'source_portgroup'),

    # Match only packets in the range of port numbers. (a Optional[Array[String]])
    Puppet::Resource::Param(Any, 'source_range'),

    # Destination Address. Either Destination Address, address object-group, any or destination host are required. (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'destination_address'),

    # Destination Address object-group. Either Destination Address, address object-group, any or destination host are required. (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'destination_address_group'),

    # Destination Address. Either Destination Address, address object-group, any or destination host are required. (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'destination_address_any'),

    # Destination Address. Either Destination Address, address object-group, any or destination host are required. (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'destination_address_host'),

    # Destination Address wildcard mask. Must be used with, and only used with, Destination Address. (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'destination_address_wildcard_mask'),

    # Match only packets on a given port number. (a Optional[Array[String]])
    Puppet::Resource::Param(Any, 'destination_eq'),

    # Match only packets with a greater port number. (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'destination_gt'),

    # Match only packets with a lower port number. (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'destination_lt'),

    # Match only packets not on a given port number. (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'destination_neq'),

    # Destination port object-group. (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'destination_portgroup'),

    # Match only packets in the range of port numbers. (a Optional[Array[String]])
    Puppet::Resource::Param(Any, 'destination_range'),

    # Match on the ACK bit. (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'ack'),

    # Match packets with given dscp value. (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'dscp'),

    # Match on the FIN bit. (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'fin'),

    # Check non-initial fragments. (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'fragments'),

    # ICMP message code. (a Optional[Integer])
    # 
    # Values can match `/^-?\d+$/`.
    Puppet::Resource::Param(Pattern[/^-?\d+$/], 'icmp_message_code'),

    # ICMP message type. (a Optional[Variant[String, Integer]])
    Puppet::Resource::Param(Any, 'icmp_message_type'),

    # IGMP message type. (a Optional[Variant[String, Integer]])
    Puppet::Resource::Param(Any, 'igmp_message_type'),

    # Log matches against this entry. Either log or log_input can be used, but not both. (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'log'),

    # Log matches against this entry, including input interface. Either log or log_input can be used, but not both. (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'log_input'),

    # Match if all specified flags are present. (a Optional[Array[String]])
    Puppet::Resource::Param(Any, 'match_all'),

    # Match if any specified flags are present. (a Optional[Array[String]])
    Puppet::Resource::Param(Any, 'match_any'),

    # Match packets with given IP Options value. (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'option'),

    # Match packets with given precedence value. (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'precedence'),

    # Match on the PSH bit. (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'psh'),

    # Create reflexive access list entry. (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'reflect'),

    # Maximum time to live in seconds. Only to be used with reflect. (a Optional[Integer])
    # 
    # Values can match `/^-?\d+$/`.
    Puppet::Resource::Param(Pattern[/^-?\d+$/], 'reflect_timeout'),

    # Match on the RST bit. (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'rst'),

    # Match on the SYN bit. (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'syn'),

    # Specify a time-range. (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'time_range'),

    # Match packets with given TOS value. (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'tos'),

    # Match on the URG bit. (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'urg')
  ],
  [
    # Name. Made up of access_list and the entry with a space seperator. eg. "list42 10" is from access_list list42 and entry 10. (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'name', true)
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
