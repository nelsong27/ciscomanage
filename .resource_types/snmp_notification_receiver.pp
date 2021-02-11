# This file was automatically generated on 2021-02-07 14:46:45 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Manage an SNMP notification receiver
Puppet::Resource::ResourceType3.new(
  'snmp_notification_receiver',
  [
    # Whether the SNMP notification receiver should be present or absent on the target system. (a Enum[present, absent])
    # 
    # Valid values are `absent`, `present`.
    Puppet::Resource::Param(Enum['absent', 'present'], 'ensure'),

    # SNMP UDP port number (a Optional[Variant[Integer[1, 65535], Enum["unset"], Integer[-1, -1]]])
    Puppet::Resource::Param(Any, 'port'),

    # Username to use for SNMPv3 privacy and authentication. This is the community string for SNMPv1 and v2 (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'username'),

    # SNMP version [v1|v2|v2c|v3] (a Optional[Enum["v1","v2","v2c","v3"]])
    Puppet::Resource::Param(Any, 'version'),

    # The type of receiver [traps|informs] (a Optional[Enum["traps","informs"]])
    Puppet::Resource::Param(Any, 'type'),

    # SNMPv3 security mode [auth|noauth|priv] (a Optional[Enum["auth","noauth","priv"]])
    Puppet::Resource::Param(Any, 'security'),

    # VRF to send SNMP data from, e.g. "management" (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'vrf'),

    # Source interface to send SNMP data from, e.g. "ethernet 2/1" (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'source_interface')
  ],
  [
    # Composite ID of name / username / port (if applicable) (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'name', true)
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
