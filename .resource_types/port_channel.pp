# This file was automatically generated on 2021-02-07 14:46:43 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Network Device Link Aggregation Group
Puppet::Resource::ResourceType3.new(
  'port_channel',
  [
    # Whether this port channel should be enabled on the target system. (a Enum[present, absent])
    # 
    # Valid values are `absent`, `present`.
    Puppet::Resource::Param(Enum['absent', 'present'], 'ensure'),

    # Force configuration (true / false) (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'force'),

    # Channel Group ID, e.g. 10 (a Optional[Integer])
    # 
    # Values can match `/^-?\d+$/`.
    Puppet::Resource::Param(Pattern[/^-?\d+$/], 'id'),

    # Port Channel description (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'description'),

    # LACP mode [ passive | active | disabled* ] (a Optional[Enum["active","passive", "disabled"]])
    Puppet::Resource::Param(Any, 'mode'),

    # Array of Physical Interfaces (a Optional[Array[String]])
    Puppet::Resource::Param(Any, 'interfaces'),

    # Number of active links required for LAG to be up (a Optional[Integer])
    # 
    # Values can match `/^-?\d+$/`.
    Puppet::Resource::Param(Pattern[/^-?\d+$/], 'minimum_links'),

    # Link speed [auto*|10m|100m|1g|10g|40g|56g|100g] (a Optional[Enum["auto","10m","100m","1g","10g","40g","56g","100g"]])
    Puppet::Resource::Param(Any, 'speed'),

    # Duplex mode [auto*|full|half] (a Optional[Enum["auto","full","half"]])
    Puppet::Resource::Param(Any, 'duplex'),

    # Flow control (send) [desired|on|off] (a Optional[Enum["desired","on","off"]])
    Puppet::Resource::Param(Any, 'flowcontrol_send'),

    # Flow control (receive) [desired|on|off] (a Optional[Enum["desired","on","off"]])
    Puppet::Resource::Param(Any, 'flowcontrol_receive')
  ],
  [
    # LAG Name (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'name', true)
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
